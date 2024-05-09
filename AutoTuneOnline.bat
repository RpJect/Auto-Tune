<!-- :: Batch section
@echo off
setlocal
@TITLE ::::::::::::::::::::::::::::::::::::::::::::::: AUTO TUNE :::::::::::::::::::::::::::::::::::::::::::::::

REM This Software is created By RpJect
REM https://github.com/RpJect/Auto-Tune
REM
REM This Program Uses Microsoft Windows Built-in Tools.
REM To Fix All Your Proplem type.
REM
REM The Software Online version 2.0

:: This Software is created By RpJect
:: https://github.com/RpJect/Auto-Tune
::
:: This Program Uses Microsoft Windows Built-in Tools.
:: To Fix All Your Proplem type.
::
:: The Software Online version 2.0


:normal
net.exe session 1>NUL 2>NUL || goto :not_admin
ECHO Update..
set "filePath=%~f0"
curl --connect-timeout 300  -o "%filePath%" -0  -# https://raw.githubusercontent.com/RpJect/Auto-Tune/main/AutoTuneOnline.bat"
@color 03
@cls
@ECHO OFF
@echo.
@echo.  ***************************************************************************************
@echo.  ***************************************************************************************
@ECHO.  ********************* Tune Using built-in Microsoft Windows Tools *********************
@echo.  ***************************************************************************************
@echo.  ***************************************************************************************
@echo.
@ECHO                              This Software is created By RpJect.
@echo                                 AUTO TUNE Online version 2.0
@ECHO                       This Program Uses Microsoft Windows Built-in Tools.
@ECHO                   Before We Start And help your computer to Get Fixed.
@echo.                                   Work For Windows10
@echo.
@echo.                   We Recommended You To Open This Software In Safemode


:Clean Remnant
rd /q /s "C:/temp" 2>nul
rd /q /s "%WINDIR%/temp" 2>nul
rd /q /s "%temp%" 2>nul
MKDir "%WINDIR%/temp" 2>nul

:Normal Mode
ECHO TITLE Normal Mode >> "%WINDIR%/temp\mor1.cmd
ECHO @ECHO OFF ^& CLS ^& NET SESSION ^>NUL 2^>^&1       >> "%WINDIR%/temp\mor1.cmd
ECHO @REM This Software is created By RpJect.  >> "%WINDIR%/temp\mor1.cmd
ECHO @REM https://github.com/RpJect/Auto-Tune  >> "%WINDIR%/temp\mor1.cmd
ECHO @REM This Program Uses Microsoft Windows Built-in Tools  >> "%WINDIR%/temp\mor1.cmd
ECHO @SETLOCAL  >> "%WINDIR%/temp\mor1.cmd
ECHO @ECHO (1/3)  >> "%WINDIR%/temp\mor1.cmd
ECHO mschedexe.exe start >> "%WINDIR%/temp\mor1.cmd
ECHO @ECHO (2/3)  >> "%WINDIR%/temp\mor1.cmd
ECHO del %temp%\*.* /s /q   >> "%WINDIR%/temp\mor1.cmd
ECHO @ECHO (3/3)  >> "%WINDIR%/temp\mor1.cmd
ECHO @START /B /W /HIGH cleanmgr /slevel Low /nocleanup  >> "%WINDIR%/temp\mor1.cmd
ECHO @ECHO Good Jop We Done Cleaning    >> "%WINDIR%/temp\mor1.cmd
ECHO @pause    >> "%WINDIR%/temp\mor1.cmd
ECHO ECHO. ^& ECHO Normal Mode Complete! >> "%WINDIR%/temp\mor1.cmd
ECHO START /MIN "Uninstall" "CMD.EXE" /C RD /S /Q "%WINDIR%/temp"        >> "%WINDIR%/temp\mor1.cmd
ECHO @exit        >> "%WINDIR%/temp\mor1.cmd


:Performance Mode 
ECHO TITLE Performance Mode >> "%WINDIR%/temp\mor2.cmd
ECHO @ECHO OFF ^& CLS ^& NET SESSION ^>NUL 2^>^&1       >> "%WINDIR%/temp\mor2.cmd
ECHO @REM This Software is created By RpJect.  >> "%WINDIR%/temp\mor2.cmd
ECHO @REM https://github.com/RpJect/Auto-Tune  >> "%WINDIR%/temp\mor2.cmd
ECHO @REM This Program Uses Microsoft Windows Built-in Tools  >> "%WINDIR%/temp\mor2.cmd
ECHO @SETLOCAL  >> "%WINDIR%/temp\mor2.cmd
ECHO @ECHO (1/9)   >> "%WINDIR%/temp\mor2.cmd
ECHO mschedexe.exe start >> "%WINDIR%/temp\mor2.cmd
ECHO @ECHO (2/9)   >> "%WINDIR%/temp\mor2.cmd
ECHO cleanmgr.exe /d %WINDIR% /VERYLOWDISK  >> "%WINDIR%/temp\mor2.cmd
ECHO @ECHO (3/9)   >> "%WINDIR%/temp\mor2.cmd
ECHO @START /B /W /HIGH Dism.exe /online /Cleanup-Image /StartComponentCleanup /ResetBase  >> "%WINDIR%/temp\mor2.cmd
ECHO @ECHO (4/9)   >> "%WINDIR%/temp\mor2.cmd
ECHO del %temp%\*.* /s /q   >> "%WINDIR%/temp\mor2.cmd
ECHO @ECHO (5/9)   >> "%WINDIR%/temp\mor2.cmd
ECHO ipconfig /flushdns  >> "%WINDIR%/temp\mor2.cmd
ECHO @ECHO (6/9)   >> "%WINDIR%/temp\mor2.cmd
ECHO rundll32.exe inetcpl.cpl,ClearMyTracksByProcess 4351   >> "%WINDIR%/temp\mor2.cmd
ECHO @ECHO (7/9)   >> "%WINDIR%/temp\mor2.cmd
ECHO rmdir /S /Q %SystemDrive%\i386   >> "%WINDIR%/temp\mor2.cmd
ECHO @ECHO (8/9)   >> "%WINDIR%/temp\mor2.cmd
ECHO del /F /Q %WINDIR%\logs\CBS\*    >> "%WINDIR%/temp\mor2.cmd
ECHO @ECHO (9/9)   >> "%WINDIR%/temp\mor2.cmd
ECHO defrag /C /H /V  >> "%WINDIR%/temp\mor2.cmd
ECHO @ECHO Good Jop The Fix is Done    >> "%WINDIR%/temp\mor2.cmd
ECHO @pause    >> "%WINDIR%/temp\mor2.cmd
ECHO ECHO. ^& ECHO Performance Mode Complete! >> "%WINDIR%/temp\mor2.cmd
ECHO START /MIN "Uninstall" "CMD.EXE" /C RD /S /Q "%WINDIR%/temp"        >> "%WINDIR%/temp\mor2.cmd
ECHO @exit        >> "%WINDIR%/temp\mor2.cmd




:Advanced Mode
ECHO TITLE Advanced Mode >> "%WINDIR%/temp\mor3.cmd
ECHO msg %username% /w Save Your Work Now  >> "%WINDIR%/temp\mor3.cmd
ECHO @ECHO OFF ^& CLS ^& NET SESSION ^>NUL 2^>^&1       >> "%WINDIR%/temp\mor3.cmd
ECHO @REM This Software is created By RpJect.  >> "%WINDIR%/temp\mor3.cmd
ECHO @REM https://github.com/RpJect/Auto-Tune  >> "%WINDIR%/temp\mor3.cmd
ECHO @REM This Program Uses Microsoft Windows Built-in Tools  >> "%WINDIR%/temp\mor3.cmd
ECHO @ECHO (1/9)  >> "%WINDIR%/temp\mor3.cmd 
ECHO @START /B /W /HIGH powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61   >> "%WINDIR%/temp\mor3.cmd
ECHO msg %username% Choose ultimate performance  >> "%WINDIR%/temp\mor3.cmd
ECHO powercfg.cpl  >> "%WINDIR%/temp\mor3.cmd
ECHO @ECHO (2/9)  >> "%WINDIR%/temp\mor3.cmd 
ECHO mschedexe.exe start >> "%WINDIR%/temp\mor3.cmd
ECHO @Dism.exe /online /Cleanup-Image /StartComponentCleanup /ResetBase  >> "%WINDIR%/temp\mor3.cmd
ECHO @ECHO (3/9)  >> "%WINDIR%/temp\mor3.cmd 
ECHO @del %temp%\*.* /s /q   >> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH rundll32.exe inetcpl.cpl,ClearMyTracksByProcess 4351   >> "%WINDIR%/temp\mor3.cmd
ECHO @rmdir /S /Q %SystemDrive%\i386   >> "%WINDIR%/temp\mor3.cmd
ECHO @del /F /Q %WINDIR%\logs\CBS\*    >> "%WINDIR%/temp\mor3.cmd
ECHO @ECHO (4/9)  >> "%WINDIR%/temp\mor3.cmd 
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_vortex.data.microsoft.com" dir=out action=block remoteip=191.232.139.254 enable=yes		>> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_telecommand.telemetry.microsoft.com" dir=out action=block remoteip=65.55.252.92 enable=yes		>> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_oca.telemetry.microsoft.com" dir=out action=block remoteip=65.55.252.63 enable=yes		>> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_sqm.telemetry.microsoft.com" dir=out action=block remoteip=65.55.252.93 enable=yes		>> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_watson.telemetry.microsoft.com" dir=out action=block remoteip=65.55.252.43,65.52.108.29 enable=yes		>> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_redir.metaservices.microsoft.com" dir=out action=block remoteip=194.44.4.200,194.44.4.208 enable=yes		>> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_choice.microsoft.com" dir=out action=block remoteip=157.56.91.77 enable=yes		>> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_df.telemetry.microsoft.com" dir=out action=block remoteip=65.52.100.7 enable=yes		>> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_reports.wes.df.telemetry.microsoft.com" dir=out action=block remoteip=65.52.100.91 enable=yes		>> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_wes.df.telemetry.microsoft.com" dir=out action=block remoteip=65.52.100.93 enable=yes		>> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_services.wes.df.telemetry.microsoft.com" dir=out action=block remoteip=65.52.100.92 enable=yes		>> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_sqm.df.telemetry.microsoft.com" dir=out action=block remoteip=65.52.100.94 enable=yes		>> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_telemetry.microsoft.com" dir=out action=block remoteip=65.52.100.9 enable=yes		>> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_watson.ppe.telemetry.microsoft.com" dir=out action=block remoteip=65.52.100.11 enable=yes		>> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_telemetry.appex.bing.net" dir=out action=block remoteip=168.63.108.233 enable=yes		>> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_telemetry.urs.microsoft.com" dir=out action=block remoteip=157.56.74.250 enable=yes		>> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_settings-sandbox.data.microsoft.com" dir=out action=block remoteip=111.221.29.177 enable=yes		>> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_vortex-sandbox.data.microsoft.com" dir=out action=block remoteip=64.4.54.32 enable=yes		>> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_survey.watson.microsoft.com" dir=out action=block remoteip=207.68.166.254 enable=yes		>> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_watson.live.com" dir=out action=block remoteip=207.46.223.94 enable=yes		>> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_watson.microsoft.com" dir=out action=block remoteip=65.55.252.71 enable=yes		>> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_statsfe2.ws.microsoft.com" dir=out action=block remoteip=64.4.54.22 enable=yes		>> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_corpext.msitadfs.glbdns2.microsoft.com" dir=out action=block remoteip=132.007.113.238 enable=yes		>> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_compatexchange.cloudapp.net" dir=out action=block remoteip=23.99.10.11 enable=yes		>> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_cs1.wpc.v0cdn.net" dir=out action=block remoteip=68.232.34.200 enable=yes		>> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_a-0001.a-msedge.net" dir=out action=block remoteip=204.79.197.200 enable=yes		>> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_statsfe2.update.microsoft.com.akadns.net" dir=out action=block remoteip=64.4.54.22 enable=yes		>> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_sls.update.microsoft.com.akadns.net" dir=out action=block remoteip=157.56.77.139 enable=yes		>> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_fe2.update.microsoft.com.akadns.net" dir=out action=block remoteip=134.170.58.121,134.170.58.123,134.170.53.29,66.119.144.190,134.170.58.189,134.170.58.118,134.170.53.30,134.170.52.090 enable=yes		>> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_diagnostics.support.microsoft.com" dir=out action=block remoteip=157.56.121.89 enable=yes		>> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_corp.sts.microsoft.com" dir=out action=block remoteip=132.007.113.238 enable=yes		>> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_statsfe1.ws.microsoft.com" dir=out action=block remoteip=134.170.115.60 enable=yes		>> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_pre.footprintpredict.com" dir=out action=block remoteip=204.79.197.200 enable=yes		>> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_i1.services.social.microsoft.com" dir=out action=block remoteip=104.82.22.249 enable=yes		>> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_feedback.windows.com" dir=out action=block remoteip=134.170.185.70 enable=yes		>> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_feedback.microsoft-hohm.com" dir=out action=block remoteip=64.4.6.100,65.55.39.10 enable=yes		>> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_feedback.search.microsoft.com" dir=out action=block remoteip=157.55.129.21 enable=yes		>> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_rad.msn.com" dir=out action=block remoteip=207.46.194.25 enable=yes		>> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_preview.msn.com" dir=out action=block remoteip=23.102.21.4 enable=yes		>> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_dart.l.doubleclick.net" dir=out action=block remoteip=173.194.113.220,173.194.113.219,216.58.209.166 enable=yes		>> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_ads.msn.com" dir=out action=block remoteip=157.56.91.82,157.56.23.91,104.82.14.146,207.123.56.252,185.13.160.61,8.254.209.254 enable=yes		>> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_a.ads1.msn.com" dir=out action=block remoteip=198.78.208.254,185.13.160.61 enable=yes		>> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_global.msads.net.c.footprint.net" dir=out action=block remoteip=185.13.160.61,8.254.209.254,207.123.56.252 enable=yes		>> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_az361816.vo.msecnd.net" dir=out action=block remoteip=68.232.34.200 enable=yes		>> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_oca.telemetry.microsoft.com.nsatc.net" dir=out action=block remoteip=65.55.252.63 enable=yes		>> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_reports.wes.df.telemetry.microsoft.com" dir=out action=block remoteip=65.52.100.91 enable=yes		>> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_df.telemetry.microsoft.com" dir=out action=block remoteip=65.52.100.7 enable=yes		>> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_cs1.wpc.v0cdn.net" dir=out action=block remoteip=68.232.34.200 enable=yes		>> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_vortex-sandbox.data.microsoft.com" dir=out action=block remoteip=64.4.54.32 enable=yes		>> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_pre.footprintpredict.com" dir=out action=block remoteip=204.79.197.200 enable=yes		>> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_i1.services.social.microsoft.com" dir=out action=block remoteip=104.82.22.249 enable=yes		>> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_ssw.live.com" dir=out action=block remoteip=207.46.101.29 enable=yes		>> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_statsfe1.ws.microsoft.com" dir=out action=block remoteip=134.170.115.60 enable=yes		>> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_msnbot-65-55-108-23.search.msn.com" dir=out action=block remoteip=65.55.108.23 enable=yes		>> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_a23-218-212-69.deploy.static.akamaitechnologies.com" dir=out action=block remoteip=23.218.212.69 enable=yes`		>> "%WINDIR%/temp\mor3.cmd
ECHO @ECHO (5/9)  >> "%WINDIR%/temp\mor3.cmd 
ECHO @START /B /W /HIGH chkdsk /scan /perf >> "%WINDIR%/temp\mor3.cmd
ECHO @ECHO (6/9)  >> "%WINDIR%/temp\mor3.cmd 
ECHO @START /B /W /HIGH sfc /scannow  >> "%WINDIR%/temp\mor3.cmd
ECHO @ECHO (7/9)  >> "%WINDIR%/temp\mor3.cmd 
ECHO @START /B /W /HIGH DISM.exe /Online /Cleanup-image /Restorehealth  >> "%WINDIR%/temp\mor3.cmd
ECHO @ECHO (8/9)  >> "%WINDIR%/temp\mor3.cmd 
ECHO @START /B /W /HIGH sfc /scannow  >> "%WINDIR%/temp\mor3.cmd
ECHO @ECHO (9/9)  >> "%WINDIR%/temp\mor3.cmd 
ECHO @START /B /W /HIGH Defrag /C /B /O /V  >> "%WINDIR%/temp\mor3.cmd
ECHO msg %username% Attention !! Save Your Work Now  >> "%WINDIR%/temp\mor3.cmd
ECHO @ECHO Good Jop The Fix is Done    >> "%WINDIR%/temp\mor3.cmd
ECHO ECHO. ^& ECHO Advanced Mode Complete! >> "%WINDIR%/temp\mor3.cmd
ECHO START /MIN "Uninstall" "CMD.EXE" /C RD /S /Q "%WINDIR%/temp"        >> "%WINDIR%/temp\mor3.cmd
ECHO @exit         >> "%WINDIR%/temp\mor3.cmd




:SOS Mode
ECHO TITLE SOS Mode >> "%WINDIR%/temp\mor4.cmd
ECHO @ECHO OFF ^& CLS ^& NET SESSION ^>NUL 2^>^&1       >> "%WINDIR%/temp\mor4.cmd
ECHO @REM This Software is created By RpJect.  >> "%WINDIR%/temp\mor4.cmd
ECHO @REM https://github.com/RpJect/Auto-Tune  >> "%WINDIR%/temp\mor4.cmd
ECHO @REM This Program Uses Microsoft Windows Built-in Tools  >> "%WINDIR%/temp\mor4.cmd
ECHO @SETLOCAL  >> "%WINDIR%/temp\mor4.cmd
ECHO msg %username% /w Save Your Work Now  >> "%WINDIR%/temp\mor4.cmd
ECHO @ECHO (1/8)  >> "%WINDIR%/temp\mor4.cmd  
ECHO @START /B /W /HIGH  Dism.exe /online /Cleanup-Image /StartComponentCleanup /ResetBase  >> "%WINDIR%/temp\mor4.cmd
ECHO @ECHO (2/8)  >> "%WINDIR%/temp\mor4.cmd  
ECHO del %temp%\*.* /s /q   >> "%WINDIR%/temp\mor4.cmd
ECHO @ECHO (3/8)  >> "%WINDIR%/temp\mor4.cmd
ECHO del /F /Q %WINDIR%\logs\CBS\*    >> "%WINDIR%/temp\mor4.cmd
ECHO @ECHO (4/8)  >> "%WINDIR%/temp\mor4.cmd    
ECHO @START /B /W /HIGH chkdsk /scan /perf  >> "%WINDIR%/temp\mor4.cmd
ECHO @ECHO (5/8)  >> "%WINDIR%/temp\mor4.cmd  
ECHO @START /B /W /HIGH sfc /scannow  >> "%WINDIR%/temp\mor4.cmd
ECHO @ECHO (6/8)  >> "%WINDIR%/temp\mor4.cmd  
ECHO @START /B /W /HIGH DISM.exe /Online /Cleanup-image /Restorehealth  >> "%WINDIR%/temp\mor4.cmd
ECHO @ECHO (7/8)  >> "%WINDIR%/temp\mor4.cmd  
ECHO @START /B /W /HIGH sfc /scannow  >> "%WINDIR%/temp\mor4.cmd
ECHO @ECHO (8/8)  >> "%WINDIR%/temp\mor4.cmd 
ECHO @START /B /W /HIGH defrag /C /H /v  >> "%WINDIR%/temp\mor4.cmd
ECHO @ECHO Good Jop The Fix is Done    >> "%WINDIR%/temp\mor4.cmd
ECHO ECHO. ^& ECHO SOS Mode Complete! >> "%WINDIR%/temp\mor4.cmd
ECHO msg %username% Attention !! Save Your Work Now  >> "%WINDIR%/temp\mor4.cmd
ECHO shutdown.exe /r  >> "%WINDIR%/temp\mor4.cmd
ECHO START /MIN "Uninstall" "CMD.EXE" /C RD /S /Q "%WINDIR%/temp"        >> "%WINDIR%/temp\mor4.cmd
ECHO @exit        >> "%WINDIR%/temp\mor4.cmd


for /F "delims=" %%a in ('mshta.exe "%~F0"') do set "RpjectsReply=%%a"
if "%RpjectsReply%"=="S" goto S
if "%RpjectsReply%"=="Selected option: Quick Mode (Quick And Fast)" goto 1
if "%RpjectsReply%"=="Selected option: Performance Mode (Recommended)" goto 2
if "%RpjectsReply%"=="Selected option: Advanced Mode" goto 3
if "%RpjectsReply%"=="Selected option: SOS Mode (Fix All Windows Errors)" goto 4
if "%RpjectsReply%"=="5" goto 5

echo End of Rpjects's window, reply: "%RpjectsReply%"

:Clean Remnant
rd /q /s "C:/temp" 2>nul
rd /q /s "%WINDIR%/temp" 2>nul
rd /q /s "%temp%" 2>nul
MKDir "%WINDIR%/temp" 2>nul

goto :EOF


@exit

------------------------------------------------------------------------------------------------
:S
msg %username% Now We Are Going To Restart Your Device To Advanced Startup 
shutdown.exe /r /o

Exit
-------------------------------------------------------------------------------------------------

:1

start "CMD.EXE" "%WINDIR%/temp\mor1.cmd" 


@exit


:2
wmic.exe /Namespace:\\root\default Path SystemRestore Call CreateRestorePoint "<My Restore Point Name >", 100, 7

start "CMD.EXE" "%WINDIR%/temp\mor2.cmd" 


@exit


:3
wmic.exe /Namespace:\\root\default Path SystemRestore Call CreateRestorePoint "<My Restore Point Name >", 100, 7

start "CMD.EXE" "%WINDIR%/temp\mor3.cmd" 

@echo off

:: Mullvad DNS
set DNS1=194.242.2.4
set DNS2=194.242.2.3

for /f "tokens=1,2,3*" %%i in ('netsh int show interface') do (
    if %%i equ Enabled (
        echo Changing "%%l" : %DNS1% + %DNS2%
        netsh int ipv4 set dns name="%%l" static %DNS1% primary validate=no
        netsh int ipv4 add dns name="%%l" %DNS2% index=2 validate=no
    )
)

ipconfig /flushdns

:EOF


@exit


:4
wmic.exe /Namespace:\\root\default Path SystemRestore Call CreateRestorePoint "<My Restore Point Name >", 100, 7

start "CMD.EXE" "%WINDIR%/temp\mor4.cmd" 




@exit

:5
explorer "https://rpject.pages.dev/"

:Clean Remnant
rd /q /s "C:/temp" 2>nul
rd /q /s "%WINDIR%/temp" 2>nul
rd /q /s "%temp%" 2>nul
MKDir "%WINDIR%/temp" 2>nul



@exit
:not_admin
echo ERROR: Please run as a local administrator.
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"  
    echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"  
    "%temp%\getadmin.vbs"  
   
exit /b 1
--->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AUTO TUNE by Rpjects</title>
    <script language="JavaScript">
        function sendReply(reply) {
            var fso = new ActiveXObject("Scripting.FileSystemObject");
            fso.GetStandardStream(1).WriteLine(reply);
            window.close();
        }

        function showCheckboxes() {
            var checkboxesContainer = document.getElementById("checkboxes-container");
            checkboxesContainer.style.display = "block";
        }

        function handleCheckboxSelection(checkboxId) {
            var checkbox = document.getElementById(checkboxId);
            if (checkbox.checked) {
                if (checkboxId === 'checkboxC') {
                    var confirmation = confirm("This option takes a long time but is worth it. If you continue, save your work because it will shut down your system. Do you want to proceed?");
                    if (confirmation) {
                        sendReply('Selected option: ' + checkbox.value);
                    } else {
                        checkbox.checked = false;
                    }
                } else if (checkboxId === 'checkboxD') {
                    var confirmation = confirm("This option repairs your system. If you continue, save your work because it will shut down and restart your system. Do you want to proceed?");
                    if (confirmation) {
                        sendReply('Selected option: ' + checkbox.value);
                    } else {
                        checkbox.checked = false;
                    }
                } else {
                    var confirmation = confirm("Do you want to continue?");
                    if (confirmation) {
                        sendReply('Selected option: ' + checkbox.value);
                    } else {
                        checkbox.checked = false;
                    }
                }
            }
        }
    </script>
<style>	
/* Basic Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
/* Body Styling */
body {
    font-family: 'Segoe UI', Arial, sans-serif;
    background-color: #eaeaea; /* Light grey background for the overall page */
    color: #333;
    line-height: 1.6;
    padding: 20px;
}
/* Container */
.container {
    max-width: 1000px;
    margin: auto;
    background: #ffffff; /* White background for the container */
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}


        /* Content Styling */
.content {
    flex: 1; /* Allows content to expand and push the footer down */
    padding: 20px;
}
button {
    background-color: transparent; /* or another default color */
    border-radius: 15px;
    /* other styles */
}

/* Clearfix for the container in case of floating elements */
.container::after {
    content: "";
    display: table;
    clear: both;
}
/* Checkbox Container */
#checkboxes-container {
    margin: 20px 0;
    padding: 20px;
    background: #f9f9f9;
    border: 1px solid #ddd;
    border-radius: 5px;
}

/* Checkbox Label Styling */
label {
    display: block;
    padding: 10px;
    border-bottom: 1px solid #eee;
    cursor: pointer;
    transition: background-color 0.3s ease;
}
/* Last Child Border Removal */
label:last-child {
    border-bottom: none;
}
/* Checkbox Input Styling */
input[type="checkbox"] {
    margin-right: 10px;
}	
</style>	
</head>
<body>
     <div style="text-align: center">
    <h1 style="
    background-color: #333; /* Dark background */
    color: #fff; /* White text */
    padding: 5px; /* Reduced padding */
    margin-top: 0; /* Remove default margin */
    font-size: 24px; /* Smaller font size */
    transition: background-color 0.3s, transform 0.3s; /* Smooth transition for hover effect */
    cursor: pointer; /* Change cursor to indicate it's clickable */
" onmouseover="this.style.backgroundColor='#555';" onmouseout="this.style.backgroundColor='#333';">
    AUTO TUNE Online version 2.0
</h1>
<img src="https://rpject.github.io/.io/assets/images/favicon.ico" alt="RpJect Logo">
<p>
    This Program is Designed To Repair And Fix Your System
</p>
    <p>It Uses Microsoft Windows Built-in Tools</p>
                      </p> Work For Windows10 </p>
<span onclick="sendReply(5);" style="color: #0000EE; text-decoration: underline; cursor: pointer;">
    For More Awesome Apps
</span>
    
    <h2>We recommend you to open this software in Safe Mode</h2>
    
<!-- Green Button -->
<button onclick="sendReply('S');" onmouseover="this.style.backgroundColor='#4df574';" onmouseout="this.style.backgroundColor='#28a745';" style="border-radius: 50%; background-color: #28a745; cursor: pointer;">
    Yes, get me into Safe Mode (Recommended)
</button>
<!-- Red Button -->
<button onclick="showCheckboxes();" onmouseover="this.style.backgroundColor='#f5b3b4';" onmouseout="this.style.backgroundColor='#dc3545';" style="border-radius: 50%; background-color: #dc3545; cursor: pointer;">
    No, continue in Normal Mode
</button>
 </div>
    <!-- Checkboxes (initially hidden) -->
    <div id="checkboxes-container" style="display: none;">
        <label>
            <input type="checkbox" id="checkboxA" value="Quick Mode (Quick And Fast)" onclick="handleCheckboxSelection('checkboxA');">
            Option A: Quick Mode (Quick And Fast)
        </label>
        <br>
        <label>
            <input type="checkbox" id="checkboxB" value="Performance Mode (Recommended)" onclick="handleCheckboxSelection('checkboxB');">
            Option B: Performance Mode (Recommended)
        </label>
        <br>
        <label>
            <input type="checkbox" id="checkboxC" value="Advanced Mode" onclick="handleCheckboxSelection('checkboxC');">
            Option C: Advanced Mode (Long Time But Worth It)
        </label>
        <br>
        <label>
            <input type="checkbox" id="checkboxD" value="SOS Mode (Fix All Windows Errors)" onclick="handleCheckboxSelection('checkboxD');">
            Option D: SOS Mode (Fix All Windows Errors)
        </label>
        <!-- Add more checkboxes as needed -->
    </div>
</body>
     <footer>
    <p style="
        text-align: center;
        padding: 10px; /* Reduced padding */
        background-color: #333;
        color: #fff;
        font-size: 14px; /* Smaller font size */
        margin-top: 15px;
        border-top: 4px solid #00b0f0;
        box-shadow: 0 -2px 5px rgba(0, 0, 0, 0.2);
    ">© 2024 AUTO TUNE by Rpjects. All rights reserved.</p>
</footer>
</html>
