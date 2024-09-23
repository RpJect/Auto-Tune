@echo off
:: Windows Revive and Optimization Script for Old Machines
:: -------------------------------------------------------
:: Automatically cleans, repairs, optimizes, and boosts Windows.
:: Includes BleachBit for junk cleaning, Malwarebytes for malware scanning,
:: system optimizations, and repair tools (CHKDSK, SFC, DISM).

:: Ensure admin privileges
openfiles >nul 2>&1
if %errorlevel% neq 0 (
    powershell -Command "Start-Process -FilePath '%~0' -Verb RunAs"
    exit /b
)

:: Variables
set "checkpoint_file=%~dp0checkpoint.txt"
set "error_log=%~dp0error_log.txt"
set "retry_limit=3"
set "bleachbit_path=%ProgramFiles%\BleachBit"
set "bleachbit_exe=%bleachbit_path%\bleachbit_console.exe"
set "bleachbit_download_link=https://download.bleachbit.org/BleachBit-4.4.2-portable.zip"
set "bleachbit_zip=%~dp0BleachBit.zip"
set "malwarebytes_installer=%~dp0mbsetup.exe"
set "malwarebytes_download_link=https://downloads.malwarebytes.com/file/mb4_offline"
set "malwarebytes_uninstaller=C:\Program Files\Malwarebytes\Anti-Malware\mbuninstall.exe"

:: Function: Log Errors
:LogError
echo [%date% %time%] Error: %1 >> %error_log%
exit /b

:: Function: Retry Task
:RetryTask
set /a attempts=0
:RetryLoop
set /a attempts+=1
if %attempts% leq %retry_limit% (
    echo Attempt %attempts% of %retry_limit% for task %1...
    call %1 || (echo Task failed, retrying... & goto RetryLoop)
) else (
    echo Maximum retry attempts reached for task %1.
    call :LogError "Task %1 failed after %retry_limit% attempts."
    exit /b
)
exit /b

:: Function: Create Restore Point
:CreateRestorePoint
echo Creating Restore Point...
powershell -Command "Checkpoint-Computer -Description 'WindowsRevive' -RestorePointType 'MODIFY_SETTINGS'" >nul 2>&1
if %errorlevel% neq 0 (
    echo Failed to create restore point.
    call :LogError "Restore point creation failed."
    exit /b
) else (
    echo Restore point created.
)
exit /b

:: Function: Checkpoint Progress
:Checkpoint
echo %1 > %checkpoint_file%
exit /b

:: Function: Download and Install BleachBit
:InstallBleachBit
if not exist "%bleachbit_exe%" (
    echo BleachBit not found, downloading and installing BleachBit...
    powershell -Command "Invoke-WebRequest -Uri '%bleachbit_download_link%' -OutFile '%bleachbit_zip%'" >nul 2>&1
    if %errorlevel% neq 0 (
        echo Failed to download BleachBit.
        call :LogError "BleachBit download failed."
        exit /b
    )
    powershell -Command "Expand-Archive -Path '%bleachbit_zip%' -DestinationPath '%bleachbit_path%'" >nul 2>&1
    if %errorlevel% neq 0 (
        echo Failed to unzip BleachBit.
        call :LogError "BleachBit extraction failed."
        exit /b
    )
    echo BleachBit installed.
)
exit /b

:: Function: Clean with BleachBit
:CleanWithBleachBit
echo Running BleachBit to clean system junk...
"%bleachbit_exe%" --clean system.tmp system.recent_documents system.recycle_bin system.logs system.cache system.clipboard system.thumbnail_cache >nul 2>&1
if %errorlevel% neq 0 (
    echo BleachBit cleanup failed.
    call :LogError "BleachBit cleanup failed."
    exit /b
) else (
    echo BleachBit cleanup completed.
)
exit /b

:: Function: Install Malwarebytes
:InstallMalwarebytes
if not exist "%malwarebytes_uninstaller%" (
    echo Malwarebytes not found, downloading and installing Malwarebytes...
    powershell -Command "Invoke-WebRequest -Uri '%malwarebytes_download_link%' -OutFile '%malwarebytes_installer%'" >nul 2>&1
    if %errorlevel% neq 0 (
        echo Failed to download Malwarebytes.
        call :LogError "Malwarebytes download failed."
        exit /b
    )
    "%malwarebytes_installer%" /silent
    if %errorlevel% neq 0 (
        echo Malwarebytes installation failed.
        call :LogError "Malwarebytes installation failed."
        exit /b
    )
    echo Malwarebytes installed.
)
exit /b

:: Function: Scan with Malwarebytes
:ScanWithMalwarebytes
echo Scanning with Malwarebytes...
"C:\Program Files\Malwarebytes\Anti-Malware\mbam.exe" /scan >nul 2>&1
if %errorlevel% neq 0 (
    echo Malwarebytes scan failed.
    call :LogError "Malwarebytes scan failed."
    exit /b
) else (
    echo Malwarebytes scan completed.
)
exit /b

:: Function: Uninstall Malwarebytes
:UninstallMalwarebytes
if exist "%malwarebytes_uninstaller%" (
    echo Uninstalling Malwarebytes...
    "%malwarebytes_uninstaller%" /verysilent >nul 2>&1
    if %errorlevel% neq 0 (
        echo Malwarebytes uninstallation failed.
        call :LogError "Malwarebytes uninstallation failed."
        exit /b
    ) else (
        echo Malwarebytes uninstalled.
    )
)
exit /b

:: Function: Run CHKDSK
:RunCHKDSK
echo Running CHKDSK...
chkdsk /f /r >nul 2>&1
if %errorlevel% neq 0 (
    echo CHKDSK failed.
    call :LogError "CHKDSK failed."
    exit /b
) else (
    echo CHKDSK completed.
)
exit /b

:: Function: Run SFC
:RunSFC
echo Running System File Checker (SFC)...
sfc /scannow >nul 2>&1
if %errorlevel% neq 0 (
    echo SFC scan failed.
    call :LogError "SFC scan failed."
    exit /b
) else (
    echo SFC scan completed.
)
exit /b

:: Function: Run DISM
:RunDISM
echo Running DISM to repair Windows image...
dism /online /cleanup-image /restorehealth >nul 2>&1
if %errorlevel% neq 0 (
    echo DISM failed.
    call :LogError "DISM failed."
    exit /b
) else (
    echo DISM completed.
)
exit /b

:: Function: Disable SysMain Service
:DisableSysMain
echo Disabling SysMain service to improve performance...
sc stop SysMain >nul 2>&1
sc config SysMain start=disabled >nul 2>&1
if %errorlevel% neq 0 (
    echo Disabling SysMain failed.
    call :LogError "SysMain disable failed."
    exit /b
) else (
    echo SysMain service disabled.
)
exit /b

:: Load Checkpoint
if exist "%checkpoint_file%" (
    set /p last_task=<%checkpoint_file%
    echo Resuming from task: %last_task%
) else (
    set last_task=0
)

:: Task 1: Create Restore Point
if %last_task% lss 1 (
    call :RetryTask CreateRestorePoint
    call :Checkpoint 1
)

:: Task 2: Install BleachBit
if %last_task% lss 2 (
    call :RetryTask InstallBleachBit
    call :Checkpoint 2
)

:: Task 3: Clean with BleachBit
if %last_task% lss 3 (
    call :RetryTask CleanWithBleachBit
    call :Checkpoint 3
)

:: Task 4: Install Malwarebytes
if %last_task% lss 4 (
    call :RetryTask InstallMalwarebytes
    call :Checkpoint 4
)

:: Task 5: Scan with Malwarebytes
if %last_task% lss 5 (
    call :RetryTask ScanWithMalwarebytes
    call :Checkpoint 5
)

:: Task 6: Uninstall Malwarebytes
if %last_task% lss 6 (
    call :RetryTask UninstallMalwarebytes
    call :Checkpoint 6
)

:: Task 7: Run CHKDSK
if %last_task% lss 7 (
    call :RetryTask RunCHKDSK
    call :Checkpoint 7
)

:: Task 8: Run SFC
if %last_task% lss 8 (
    call :RetryTask RunSFC
    call :Checkpoint 8
)

:: Task 9: Run DISM
if %last_task% lss 9 (
    call :RetryTask RunDISM
    call :Checkpoint 9
)

:: Task 10: Disable SysMain
if %last_task% lss 10 (
    call :RetryTask DisableSysMain
    call :Checkpoint 10
)

:: Final
cls
echo Script complete. Check error_log.txt for any issues.
pause

    echo Check error_log.txt for more details.
)

exit /b
