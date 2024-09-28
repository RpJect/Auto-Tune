# Windows Revive Script: Comprehensive System Optimization and Security Enhancements

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
$rkKillUrl = "https://download.bleachingcomputer.com/grinler/rkill.com"
$rkKillPath = "$PSScriptRoot\rkill.exe"
$dns1 = "1.1.1.2"
$dns2 = "1.0.0.2"
$firewallBlockListUrl = "https://example.com/firewall-blocklist.txt" # Replace with actual URL
$hostsBlockListUrl = "https://someonewhocares.org/hosts/zero/hosts"

# Logging Functions
function Log-Info {
    param (
        [string]$Message
    )
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    $logEntry = "[INFO] $timestamp - $Message"
    Add-Content -Path $logFile -Value $logEntry
    Write-Host $logEntry
}

function Log-Error {
    param (
        [string]$Message
    )
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    $logEntry = "[ERROR] $timestamp - $Message"
    Add-Content -Path $errorFile -Value $logEntry
    Write-Host $logEntry -ForegroundColor Red
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
            return
        } catch {
            Log-Error "Task failed on attempt $attempts. Error: $_"
            if ($attempts -ge $Retries) {
                throw "Task failed after $Retries attempts."
            }
            Start-Sleep -Seconds 5
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
        Log-Info "Downloading BleachBit..."
        try {
            Invoke-WebRequest -Uri $bleachbitDownloadUrl -OutFile $bleachbitZip -UseBasicParsing
            Expand-Archive -Path $bleachbitZip -DestinationPath $bleachbitPath -Force
            Log-Info "BleachBit installed successfully."
        } catch {
            Log-Error "Failed to install BleachBit: $_"
            throw
        }
    } else {
        Log-Info "BleachBit is already installed."
    }
}

# Clean with BleachBit
function Clean-WithBleachBit {
    if (Test-Path $bleachbitExe) {
        Log-Info "Running BleachBit cleanup..."
        try {
            Start-Process $bleachbitExe -ArgumentList "--clean system.tmp system.cache system.logs" -Wait
            Log-Info "BleachBit cleanup completed."
        } catch {
            Log-Error "Failed to run BleachBit: $_"
            throw
        }
    } else {
        Log-Error "BleachBit executable not found."
        throw "BleachBit executable not found."
    }
}

# Uninstall BleachBit silently
function Uninstall-BleachBit {
    if (Test-Path $bleachbitPath) {
        Log-Info "Uninstalling BleachBit..."
        try {
            Remove-Item -Recurse -Force -Path $bleachbitPath
            Log-Info "BleachBit uninstalled successfully."
        } catch {
            Log-Error "Failed to uninstall BleachBit: $_"
            throw
        }
    } else {
        Log-Info "BleachBit is not installed."
    }
}

# Install Malwarebytes
function Install-Malwarebytes {
    if (-not (Test-Path $malwareBytesUninstaller)) {
        Log-Info "Downloading Malwarebytes..."
        try {
            Invoke-WebRequest -Uri $malwareBytesDownloadUrl -OutFile $malwareBytesInstaller -UseBasicParsing
            Start-Process $malwareBytesInstaller -ArgumentList "/silent" -Wait
            Log-Info "Malwarebytes installed successfully."
        } catch {
            Log-Error "Failed to install Malwarebytes: $_"
            throw
        }
    } else {
        Log-Info "Malwarebytes is already installed."
    }
}

# Scan with Malwarebytes
function Scan-WithMalwarebytes {
    if (Test-Path "C:\Program Files\Malwarebytes\Anti-Malware\mbam.exe") {
        Log-Info "Starting Malwarebytes scan..."
        try {
            Start-Process "C:\Program Files\Malwarebytes\Anti-Malware\mbam.exe" -ArgumentList "/scan" -Wait
            Log-Info "Malwarebytes scan completed."
        } catch {
            Log-Error "Failed to run Malwarebytes scan: $_"
            throw
        }
    } else {
        Log-Error "Malwarebytes executable not found."
        throw "Malwarebytes executable not found."
    }
}

# Uninstall Malwarebytes silently
function Uninstall-Malwarebytes {
    if (Test-Path $malwareBytesUninstaller) {
        Log-Info "Uninstalling Malwarebytes..."
        try {
            Start-Process $malwareBytesUninstaller -ArgumentList "/verysilent" -Wait
            Log-Info "Malwarebytes uninstalled successfully."
        } catch {
            Log-Error "Failed to uninstall Malwarebytes: $_"
            throw
        }
    } else {
        Log-Info "Malwarebytes is not installed."
    }
}

# Run RKill
function Run-RKill {
    if (-not (Test-Path $rkKillPath)) {
        Log-Info "Downloading RKill..."
        try {
            Invoke-WebRequest -Uri $rkKillUrl -OutFile $rkKillPath -UseBasicParsing
            Log-Info "RKill downloaded successfully."
        } catch {
            Log-Error "Failed to download RKill: $_"
            throw
        }
    } else {
        Log-Info "RKill already downloaded."
    }
    
    Log-Info "Running RKill..."
    try {
        Start-Process $rkKillPath -Wait
        Log-Info "RKill completed successfully."
    } catch {
        Log-Error "Failed to run RKill: $_"
        throw
    }
}

# Set Cloudflare DNS for Malware Filtering
function Set-DNS {
    Log-Info "Setting Cloudflare DNS (1.1.1.2, 1.0.0.2)..."
    try {
        Set-DnsClientServerAddress -InterfaceAlias "Ethernet" -ServerAddresses $dns1, $dns2
        Set-DnsClientServerAddress -InterfaceAlias "Wi-Fi" -ServerAddresses $dns1, $dns2
        Log-Info "Cloudflare DNS set successfully."
    } catch {
        Log-Error "Failed to set Cloudflare DNS: $_"
        throw
    }
}

# Add Malicious IP Blocking Rules to Windows Firewall
function Add-FirewallRules {
    Log-Info "Adding firewall rules to block malicious IPs..."
    $maliciousIPs = @("45.33.32.156", "104.244.42.65")  # Example IPs, replace with actual list or fetch dynamically
    
    foreach ($ip in $maliciousIPs) {
        try {
            # Check if the rule already exists
            $ruleExists = Get-NetFirewallRule -DisplayName "Block Malicious IP $ip" -ErrorAction SilentlyContinue
            if (-not $ruleExists) {
                New-NetFirewallRule -DisplayName "Block Malicious IP $ip" -Direction Outbound -RemoteAddress $ip -Action Block
                New-NetFirewallRule -DisplayName "Block Malicious IP $ip" -Direction Inbound -RemoteAddress $ip -Action Block
                Log-Info "Added firewall rules to block IP: $ip."
            } else {
                Log-Info "Firewall rule for IP $ip already exists."
            }
        } catch {
            Log-Error "Failed to add firewall rule for IP $ip: $_"
        }
    }
}

# Update Hosts File with Malicious Domains
function Update-HostsFile {
    Log-Info "Updating Hosts file with blocked malicious/tracking domains..."
    $hostsPath = "C:\Windows\System32\drivers\etc\hosts"
    $blockedDomains = @(
        "0.0.0.0 badsite.com",
        "0.0.0.0 tracking.com"
        # Add more malicious domains here or fetch dynamically
    )
    
    try {
        foreach ($domain in $blockedDomains) {
            # Check if the domain is already blocked
            if (-not (Select-String -Path $hostsPath -Pattern $domain)) {
                Add-Content -Path $hostsPath -Value $domain
                Log-Info "Added $domain to Hosts file."
            } else {
                Log-Info "$domain is already in Hosts file."
            }
        }
        Log-Info "Hosts file updated with blocked domains."
    } catch {
        Log-Error "Failed to update Hosts file: $_"
        throw
    }
}

# Disable Unnecessary Services
function Disable-UnnecessaryServices {
    $services = @("SysMain", "WSearch", "RemoteDesktopServices", "WerSvc")
    foreach ($service in $services) {
        try {
            Log-Info "Disabling $service service..."
            Stop-Service -Name $service -Force -ErrorAction SilentlyContinue
            Set-Service -Name $service -StartupType Disabled -ErrorAction SilentlyContinue
            Log-Info "$service service disabled."
        } catch {
            Log-Error "Failed to disable $service service: $_"
        }
    }
}

# Disable Hibernation
function Disable-Hibernation {
    Log-Info "Disabling Hibernation..."
    try {
        powercfg -h off
        Log-Info "Hibernation disabled."
    } catch {
        Log-Error "Failed to disable Hibernation: $_"
        throw
    }
}

# Optimize Pagefile Size
function Optimize-Pagefile {
    Log-Info "Optimizing pagefile size..."
    try {
        Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" -Name "PagingFiles" -Value "C:\pagefile.sys 2048 4096"
        Log-Info "Pagefile size optimized."
    } catch {
        Log-Error "Failed to optimize pagefile size: $_"
        throw
    }
}

# Disable Unnecessary Startup Programs
function Disable-StartupPrograms {
    Log-Info "Disabling unnecessary startup programs..."
    try {
        Get-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Run' |
        ForEach-Object {
            Remove-ItemProperty -Path $_.PSPath -Name $_.PSChildName -ErrorAction SilentlyContinue
            Log-Info "Disabled startup program $($_.PSChildName)"
        }
    } catch {
        Log-Error "Failed to disable startup programs: $_"
        throw
    }
}

# Apply Registry Tweaks for Performance
function Apply-RegistryTweaks {
    Log-Info "Applying registry tweaks for performance..."
    try {
        # Disable animations
        Set-ItemProperty -Path 'HKCU:\Control Panel\Desktop\WindowMetrics' -Name 'MinAnimate' -Value 0 -ErrorAction SilentlyContinue
        
        # Disable transparency
        Set-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize' -Name 'EnableTransparency' -Value 0 -ErrorAction SilentlyContinue
        
        # Set visual effects for best performance
        Set-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects' -Name 'VisualFXSetting' -Value 2 -ErrorAction SilentlyContinue
        
        Log-Info "Registry tweaks applied."
    } catch {
        Log-Error "Failed to apply registry tweaks: $_"
        throw
    }
}

# Clean Temporary Files
function Clean-TempFiles {
    Log-Info "Removing temporary files..."
    try {
        $tempPath = [System.IO.Path]::GetTempPath()
        Remove-Item "$tempPath\*" -Recurse -Force -ErrorAction SilentlyContinue
        Log-Info "Temporary files cleaned."
    } catch {
        Log-Error "Failed to clean temporary files: $_"
        throw
    }
}

# Power Plan Optimization
function Set-HighPerformancePowerPlan {
    Log-Info "Setting power plan to High Performance..."
    try {
        powercfg /S SCHEME_MIN
        Log-Info "Power plan set to High Performance."
    } catch {
        Log-Error "Failed to set High Performance power plan: $_"
        throw
    }
}

# Scheduled Task Creation
function Create-ScheduledTask {
    Log-Info "Creating a scheduled task for weekly runs..."
    try {
        $taskName = "WindowsReviveWeekly"
        $scriptPath = "$PSScriptRoot\Optimization.ps1"
        
        $action = New-ScheduledTaskAction -Execute "Powershell.exe" -Argument "-NoProfile -ExecutionPolicy Bypass -File `"$scriptPath`""
        $trigger = New-ScheduledTaskTrigger -Weekly -DaysOfWeek Sunday -At 2:00AM
        $principal = New-ScheduledTaskPrincipal -UserId "SYSTEM" -LogonType ServiceAccount -RunLevel Highest
        $settings = New-ScheduledTaskSettingsSet -AllowStartIfOnBatteries -DontStopIfGoingOnBatteries -StartWhenAvailable
        
        Register-ScheduledTask -Action $action -Trigger $trigger -TaskName $taskName -Description "Weekly system optimization and security updates." -Principal $principal -Settings $settings -Force
        Log-Info "Scheduled task created successfully."
    } catch {
        Log-Error "Failed to create scheduled task: $_"
        throw
    }
}

# Main Execution
try {
    Log-Info "Starting Windows Revive Script..."
    
    # Create Restore Point
    Retry-Task { Create-RestorePoint }
    
    # Install, Clean, and Uninstall BleachBit
    Retry-Task { Install-BleachBit }
    Retry-Task { Clean-WithBleachBit }
    Retry-Task { Uninstall-BleachBit }
    
    # Install, Scan, and Uninstall Malwarebytes
    Retry-Task { Install-Malwarebytes }
    Retry-Task { Scan-WithMalwarebytes }
    Retry-Task { Uninstall-Malwarebytes }
    
    # Run RKill
    Retry-Task { Run-RKill }
    
    # Set Cloudflare DNS
    Retry-Task { Set-DNS }
    
    # Add Firewall Rules
    Retry-Task { Add-FirewallRules }
    
    # Update Hosts File
    Retry-Task { Update-HostsFile }
    
    # Disable Unnecessary Services
    Retry-Task { Disable-UnnecessaryServices }
    
    # Disable Hibernation
    Retry-Task { Disable-Hibernation }
    
    # Optimize Pagefile
    Retry-Task { Optimize-Pagefile }
    
    # Disable Unnecessary Startup Programs
    Retry-Task { Disable-StartupPrograms }
    
    # Apply Registry Tweaks
    Retry-Task { Apply-RegistryTweaks }
    
    # Clean Temporary Files
    Retry-Task { Clean-TempFiles }
    
    # Set Power Plan to High Performance
    Retry-Task { Set-HighPerformancePowerPlan }
    
    # Create Scheduled Task for Weekly Runs
    Retry-Task { Create-ScheduledTask }
    
    Log-Info "Windows Revive Script completed successfully."
    
    # Optional: Prompt for Restart or Shutdown
    $choice = Read-Host "Do you want to restart (R) or shut down (S) the system? Enter R or S:"
    switch ($choice.ToUpper()) {
        "R" {
            Restart-Computer -Force
        }
        "S" {
            Stop-Computer -Force
        }
        Default {
            Log-Info "No action taken. You can restart or shut down later."
        }
    }
    
} catch {
    Log-Error "Script execution failed: $_"
}
