@echo off
:: Elevate script to run as Administrator
openfiles >nul 2>&1 || (powershell -Command "Start-Process -Verb RunAs '%0'" & exit)

:: Define Variables
set "checkpoint_file=%~dp0checkpoint.txt"
set "error_log=%~dp0error_log.txt"
set "retry_limit=3"
set "malwarebytes_path=%~dp0malwarebytes-cli"
set "emsisoft_path=%~dp0emsisoft-cli"

:: Function to Display Progress Bar
:ProgressBar
setlocal ENABLEDELAYEDEXPANSION
set /a progress=%1
set bar=
for /L %%i in (1,1,%progress%) do set bar=!bar!#
set /a remaining=100-%progress%
for /L %%i in (1,1,%remaining%) do set bar=!bar!.
echo [!bar!] %progress%%
endlocal
exit /b

:: Function to Log Errors
:LogError
echo [%time%] Error: %1 >> %error_log%
exit /b

:: Function to Checkpoint Task Completion
:Checkpoint
echo %1 > %checkpoint_file%
exit /b

:: Function to Retry Critical Task on Failure
:RetryTask
set /a attempts=0
:RetryLoop
set /a attempts+=1
if %attempts% leq %retry_limit% (
    echo Attempt %attempts% of %retry_limit%...
    call %1 || (echo Task failed, retrying... & goto RetryLoop)
) else (
    echo Maximum retry attempts reached for %1
    call :LogError "Task %1 failed after %retry_limit% attempts."
    exit /b
)
exit /b

:: Function to Display Status
:Status
cls
echo.
echo ================================
echo   Windows Revive Script
echo ================================
echo.
echo Task: %1
echo Progress: %2
echo.

:: Function to Load Last Checkpoint
:LoadCheckpoint
if exist %checkpoint_file% (
    set /p last_task=<%checkpoint_file%
    echo Resuming from task: %last_task%
) else (
    set last_task=0
)
exit /b

:: Function to Create Restore Point
:CreateRestorePoint
echo Creating System Restore Point...
powershell -Command "Checkpoint-Computer -Description 'WindowsRevive Restore Point' -RestorePointType 'MODIFY_SETTINGS'"
if %errorlevel% neq 0 (
    call :LogError "Failed to create restore point."
) else (
    echo Restore Point Created Successfully.
)
exit /b

:: Malwarebytes Installation and Scanning
:MalwareScan
:Status "Installing Malwarebytes for Scan" "40%%"
if not exist "%malwarebytes_path%" (
    echo Downloading Malwarebytes CLI...
    powershell -Command "Invoke-WebRequest -Uri 'https://downloads.malwarebytes.com/file/mb_cli' -OutFile '%malwarebytes_path%.exe'"
    start /wait %malwarebytes_path%.exe /silent
)
echo Running Malwarebytes Scan...
%malwarebytes_path%\mbam.exe /scan /report
if %errorlevel% neq 0 (
    call :LogError "Malwarebytes scan failed."
)
call :Checkpoint 6
call :ProgressBar 60
exit /b

:: Emsisoft Installation and Scanning
:EmsisoftScan
:Status "Installing Emsisoft for Scan" "50%%"
if not exist "%emsisoft_path%" (
    echo Downloading Emsisoft Command Line Scanner...
    powershell -Command "Invoke-WebRequest -Uri 'https://dl.emsisoft.com/EmsisoftEmergencyKit.zip' -OutFile '%emsisoft_path%.zip'"
    powershell -Command "Expand-Archive '%emsisoft_path%.zip' -DestinationPath '%emsisoft_path%'"
)
echo Running Emsisoft Scan...
%emsisoft_path%\bin64\eecmd.exe /malware /auto
if %errorlevel% neq 0 (
    call :LogError "Emsisoft scan failed."
)
call :Checkpoint 7
call :ProgressBar 70
exit /b

:: Main Script Start
call :LoadCheckpoint

if %last_task% lss 1 (
    :: 1. Create a Restore Point before any system changes
    call :CreateRestorePoint
    call :Checkpoint 1
    call :ProgressBar 10
    timeout /t 2 >nul
)

if %last_task% lss 2 (
    :: 2. Disable Unnecessary Services First (For Speed Improvements)
    :Status "Disabling Unnecessary Services" "20%%"
    sc stop "SysMain" >nul 2>&1 || call :LogError "Failed to stop SysMain."
    sc config "SysMain" start=disabled >nul 2>&1 || call :LogError "Failed to disable SysMain."
    sc stop "WSearch" >nul 2>&1 || call :LogError "Failed to stop Windows Search."
    sc config "WSearch" start=disabled >nul 2>&1 || call :LogError "Failed to disable Windows Search."
    call :Checkpoint 2
    call :ProgressBar 20
    timeout /t 2 >nul
)

if %last_task% lss 3 (
    :: 3. Boost Windows Boot and Startup
    :Status "Boosting Windows Startup" "30%%"
    call :RetryTask "bcdedit /set {current} bootmenupolicy legacy >nul 2>&1 || call :LogError 'Failed to optimize boot.'"
    bcdedit /timeout 5 >nul 2>&1 || call :LogError "Failed to set boot timeout."
    powercfg /hibernate off >nul 2>&1 || call :LogError "Failed to disable hibernation."
    call :Checkpoint 3
    call :ProgressBar 30
    timeout /t 2 >nul
)

if %last_task% lss 4 (
    :: 4. Clean Junk and Temp Files
    :Status "Cleaning Temporary Files" "40%%"
    del /s /f /q %temp%\* >nul 2>&1 || call :LogError "Failed to delete temp files."
    del /s /f /q C:\Windows\Temp\* >nul 2>&1 || call :LogError "Failed to delete Windows temp files."
    del /s /f /q C:\Windows\Prefetch\* >nul 2>&1 || call :LogError "Failed to delete Prefetch files."
    cleanmgr /sagerun:1 >nul 2>&1 || call :LogError "Cleanmgr failed."
    call :Checkpoint 4
    call :ProgressBar 40
    timeout /t 2 >nul
)

if %last_task% lss 5 (
    :: 5. Clear and Optimize Memory and Paging File
    :Status "Optimizing Memory Usage" "50%%"
    fsutil behavior set memoryusage 2 >nul 2>&1 || call :LogError "Failed to set memory usage."
    wmic pagefileset where name="C:\\pagefile.sys" set InitialSize=1024,MaximumSize=4096 >nul 2>&1 || call :LogError "Failed to optimize paging file."
    call :Checkpoint 5
    call :ProgressBar 50
    timeout /t 2 >nul
)

if %last_task% lss 6 (
    :: 6. Virus and Malware Scanning with Third-Party Tools
    call :MalwareScan
    call :EmsisoftScan
    call :ProgressBar 80
)

if %last_task% lss 7 (
    :: 7. Run SFC and DISM for System Repair
    :Status "Repairing System Files" "60%%"
    call :RetryTask "sfc /scannow >nul 2>&1 || call :LogError 'SFC scan failed.'"
    dism /online /cleanup-image /restorehealth >nul 2>&1 || call :LogError "DISM restore failed."
    call :Checkpoint 6
    call :ProgressBar 60
    timeout /t 2 >nul
)

if %last_task% lss 8 (
    :: 8. Defragment Drives for Better Data Access
    :Status "Defragmenting Drives" "70%%"
    defrag C: /O >nul 2>&1 || call :LogError "Defragmentation failed."
    call :Checkpoint 7
    call :ProgressBar 70
    timeout /t 2 >nul
)

:: Completion
cls
echo ================================
echo   Windows Revive Complete!
echo ================================
echo.

:: Show error log if there were errors
if exist %error_log% (
    echo Some tasks encountered errors.
    echo Check error_log.txt for more details.
)

exit /b
