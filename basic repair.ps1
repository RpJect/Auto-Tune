# Function to check and set the execution policy
function Ensure-ExecutionPolicy {
    $currentPolicy = Get-ExecutionPolicy -Scope CurrentUser
    if ($currentPolicy -eq 'Restricted' -or $currentPolicy -eq 'AllSigned') {
        Write-Host "Current execution policy is $currentPolicy, setting to RemoteSigned."
        Set-ExecutionPolicy RemoteSigned -Scope CurrentUser -Force
    } else {
        Write-Host "Current execution policy is $currentPolicy, no changes needed."
    }
}

# Call the execution policy check at the start
Ensure-ExecutionPolicy

# Function to delete all IFEO subkeys with error handling
function Delete-IFEOKeys {
    $ifeoPath = "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options"
    try {
        if (Test-Path $ifeoPath) {
            Remove-Item -Path "$ifeoPath\*" -Recurse -Force
            Write-Host "Deleted all IFEO subkeys."
        } else {
            Write-Host "No IFEO keys found."
        }
    } catch {
        Write-Host "Error deleting IFEO keys: $_"
    }
}

# Function to delete all Tracing keys with error handling
function Delete-TracingKeys {
    $tracingPaths = @("HKLM:\SOFTWARE\Microsoft\Tracing", "HKCU:\SOFTWARE\Microsoft\Tracing")
    foreach ($path in $tracingPaths) {
        try {
            if (Test-Path $path) {
                Remove-Item -Path "$path\*" -Recurse -Force
                Write-Host "Deleted Tracing keys in $path."
            } else {
                Write-Host "No Tracing keys found in $path."
            }
        } catch {
            Write-Host "Error deleting Tracing keys in $path: $_"
        }
    }
}

# (Rest of the script continues...)

# Run all functions
Delete-IFEOKeys
Delete-TracingKeys
Delete-PrefetchFiles
Reset-Proxy
Reset-Winsock
Reset-TCPIP
Reset-Firewall
Reset-IPSec
Reset-BITS
Reset-IEPolicies
Reset-ChromePolicies
Reset-HostsFile

Write-Host "All tasks completed successfully."
