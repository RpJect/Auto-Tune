# Complete PowerShell Script: Windows Revive and Optimization for Old Machines

# Define Variables
$logFile = "$PSScriptRoot\optimization_log.txt"
$errorFile = "$PSScriptRoot\error_log.txt"
$retryLimit = 3
$bleachbitExe = "C:\Program Files\BleachBit\bleachbit_console.exe"
$bleachbitDownloadUrl = "https://download.bleachbit.org/BleachBit-4.4.2-portable.zip"
$bleachbitZip = "$PSScriptRoot\BleachBit.zip"
$bleachbitPath = "$PSScriptRoot\BleachBit"
$malwareBytesDownloadUrl = "https://downloads.malwarebytes.com/file/mb4_offline"
$malwareBytesInstaller = "$PSScriptRoot\mbsetup.exe"
$malwareBytesUninstaller = "C:\Program Files\Malwarebytes\Anti-Malware\mbuninstall.exe"
$rkillDownloadUrl = "https://download.bleachbit.org/BleachBit-4.4.2-portable.zip"

# Logging Functions
function Log-Info {
    $message = "[INFO] $((Get-Date).ToString()) - $args"
    Add-Content -Path $logFile -Value $message
    Write-Host $message
}

function Log-Error {
    $message = "[ERROR] $((Get-Date).ToString()) - $args"
    Add-Content -Path $errorFile -Value $message
    Write-Host $message
}

# Retry Logic for Tasks
function Retry-Task {
    param (
        [ScriptBlock]$Task,
        [int]$Retries = $retryLimit
    )
    $attempts = 0
    do {
        $attempts++
        try {
            Invoke-Command -ScriptBlock $Task
            return  # Task completed successfully, exit retry loop
        } catch {
            Log-Error "Task failed on attempt $attempts. Error: $_"
            if ($attempts -ge $Retries) {
                throw "Task failed after $Retries attempts."
            }
            Start-Sleep -Seconds 5  # Delay before retry
        }
    } while ($attempts -lt $Retries)
}

# System Restore Point
function Create-RestorePoint {
    Log-Info "Creating Restore Point..."
    try {
        Checkpoint-Computer -Description "WindowsRevive" -RestorePointType "MODIFY_SETTINGS"
        Log-Info "Restore point created successfully."
    } catch {
        Log-Error "Failed to create a restore point: $_"
        throw
    }
}

# Install BleachBit
function Install-BleachBit {
    if (-not (Test-Path $bleachbitExe)) {
        Log-Info "Downloading and installing BleachBit..."
        Invoke-WebRequest -Uri $bleachbitDownloadUrl -OutFile $bleachbitZip
        Expand-Archive -Path $bleachbitZip -DestinationPath $bleachbitPath
        Log-Info "BleachBit installed successfully."
    } else {
        Log-Info "BleachBit already installed."
    }
}

# Clean with BleachBit
function Clean-WithBleachBit {
    if (Test-Path $bleachbitExe) {
        Log-Info "Running BleachBit cleanup..."
        Start-Process $bleachbitExe -ArgumentList "--clean system.tmp system.cache system.logs" -Wait
        Log-Info "BleachBit cleanup completed."
    } else {
        Log-Error "BleachBit executable not found."
        throw "BleachBit executable not found."
    }
}

# Install, Scan, and Uninstall Malwarebytes
function Install-Malwarebytes {
    if (-not (Test-Path $malwareBytesUninstaller)) {
        Log-Info "Downloading and installing Malwarebytes..."
        Invoke-WebRequest -Uri $malwareBytesDownloadUrl -OutFile $malwareBytesInstaller
        Start-Process $malwareBytesInstaller -ArgumentList "/silent" -Wait
        Log-Info "Malwarebytes installed successfully."
    } else {
        Log-Info "Malwarebytes already installed."
    }
}

function Scan-WithMalwarebytes {
    Log-Info "Starting Malwarebytes scan..."
    Start-Process "C:\Program Files\Malwarebytes\Anti-Malware\mbam.exe" -ArgumentList "/scan" -Wait
    Log-Info "Malwarebytes scan completed."
}

function Uninstall-Malwarebytes {
    if (Test-Path $malwareBytesUninstaller) {
        Log-Info "Uninstalling Malwarebytes..."
        Start-Process $malwareBytesUninstaller -ArgumentList "/verysilent" -Wait
        Log-Info "Malwarebytes uninstalled successfully."
    } else {
        Log-Error "Malwarebytes uninstaller not found."
    }
}

# Disk Cleanup and Optimization
function Clean-TempFiles {
    Log-Info "Removing temporary files..."
    $tempPath = [System.IO.Path]::GetTempPath()
    Remove-Item "$tempPath\*" -Recurse -Force -ErrorAction SilentlyContinue
    Log-Info "Temporary files cleaned."
}

# Disk Defragmentation (for HDD only)
function Defragment-Disk {
    if ((Get-PhysicalDisk).MediaType -eq "HDD") {
        Log-Info "Starting disk defragmentation for HDD..."
        Optimize-Volume -DriveLetter C -Defrag -Verbose
        Log-Info "Disk defragmentation completed."
    } else {
        Log-Info "Skipping disk defragmentation as this is not an HDD."
    }
}

# Registry Tweaks for Performance
function Apply-RegistryTweaks {
    Log-Info "Applying performance registry tweaks..."
    Set-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects' -Name 'VisualFXSetting' -Value 2
    Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management' -Name 'ClearPageFileAtShutdown' -Value 1
    Log-Info "Registry tweaks applied."
}

# Disable Unnecessary Startup Programs
function Disable-StartupPrograms {
    Log-Info "Disabling unnecessary startup programs..."
    Get-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Run' |
    ForEach-Object {
        Remove-ItemProperty -Path $_.PSPath -Name $_.PSChildName
        Log-Info "Disabled startup program $($_.PSChildName)"
    }
}

# Disable Unnecessary Services
function Disable-UnnecessaryServices {
    $services = @("SysMain", "WSearch", "RemoteDesktopServices", "WerSvc")
    foreach ($service in $services) {
        Log-Info "Disabling $service..."
        Stop-Service -Name $service -Force
        Set-Service -Name $service -StartupType Disabled
        Log-Info "$service service disabled."
    }
}

# Power Plan to High Performance
function Set-HighPerformancePowerPlan {
    Log-Info "Setting power plan to High Performance..."
    powercfg /S SCHEME_MIN
    Log-Info "Power plan set to High Performance."
}

# Execution starts here
try {
    Log-Info "Starting Windows Revive Script..."

    # Create Restore Point
    Retry-Task { Create-RestorePoint }

    # Install BleachBit and Run Cleanup
    Retry-Task { Install-BleachBit }
    Retry-Task { Clean-WithBleachBit }

    # Install, Scan, and Uninstall Malwarebytes
    Retry-Task { Install-Malwarebytes }
    Retry-Task { Scan-WithMalwarebytes }
    Retry-Task { Uninstall-Malwarebytes }

    # System Repair Tasks
    Retry-Task { Run-CHKDSK }
    Retry-Task { Run-SFC }
    Retry-Task { Run-DISM }

    # Cleanup, Defrag, and Registry Tweaks
    Retry-Task { Clean-TempFiles }
    Retry-Task { Defragment-Disk }
    Retry-Task { Apply-RegistryTweaks }

    # Disable Unnecessary Services and Startup Programs
    Retry-Task { Disable-StartupPrograms }
    Retry-Task { Disable-UnnecessaryServices }

    # Set Power Plan to High Performance
    Retry-Task { Set-HighPerformancePowerPlan }

    Log-Info "Script completed successfully."
} catch {
    Log-Error "Script failed: $_"
}
