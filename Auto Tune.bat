@TITLE ::::::::::::::::::::::::::::::::::::::::::::::: AUTO TUNE :::::::::::::::::::::::::::::::::::::::::::::::
@color 03
@ECHO OFF
REM This Software is created By RpJect
REM https://github.com/RpJect/Auto-Tune
REM
REM This Program Uses Microsoft Windows Built-in Tools.
REM To Fix All Your Proplem type.
REM
REM The Software version 1.0

:: This Software is created By RpJect
:: https://github.com/RpJect/Auto-Tune
::
:: This Program Uses Microsoft Windows Built-in Tools.
:: To Fix All Your Proplem type.
::
:: The Software version 1.0


@echo off
net.exe session 1>NUL 2>NUL || goto :not_admin
if "%SAFEBOOT_OPTION%"=="" goto normal

echo This computer is in safe mode!

goto 2nd

:normal
@echo.
@echo.  ***************************************************************************************
@echo.  ***************************************************************************************
@ECHO.  ********************* Tune Using built-in Microsoft Windows Tools *********************
@echo.  ***************************************************************************************
@echo.  ***************************************************************************************
@echo.
@ECHO                          This Software is created By RpJect.
@echo                                  AUTO TUNE version 1.0
@ECHO                    This Program Uses Microsoft Windows Built-in Tools.
@echo.                                  Work For Windows10
@echo.
@ECHO                     Before We Start And help your computer to Get Fixed.
@echo.
@echo.                    We Recommended You To Open This Software In Safemode
@echo.
@echo.
@echo Type "S" To Get In To Safemode "Recommended"
@echo OR 
timeout /t 3 /nobreak > NUL
set/p   Mode="Type "Y" To Continue In Normalmode: "
if %Mode%==y goto 2nd
if %Mode%==Y goto 2nd
if %Mode%==Safe goto S
if %Mode%==safe goto S
if %Mode%==S goto S
if %Mode%==s goto S


cls
echo Invalid input! Please type 'Y' to start In Normal or 'S' to start In Safemode
msg %username% Invalid input! Try Again 

goto normal


@pause

@exit

------------------------------------------------------------------------------------------------

:S
shutdown.exe /r /o

Exit


:2nd
@color 02
@cls
@ECHO OFF
@echo.
@echo.  ***************************************************************************************
@echo.  ***************************************************************************************
@ECHO.  ********************* Tune Using built-in Microsoft Windows Tools *********************
@echo.  ***************************************************************************************
@echo.  ***************************************************************************************
@echo.
@ECHO                           This Software is created By RpJect.
@echo                                   AUTO TUNE version 1.0
@ECHO                       This Program Uses Microsoft Windows Built-in Tools.
@ECHO                   Before We Start And help your computer to Get Fixed.
@echo.                                  Work For Windows10
@echo.
@echo.                   We Recommended You To Open This Software In Safemode


:1

MKDir "%WINDIR%/temp

:Mor1
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
ECHO @ECHO Good Jop The Fix is Done    >> "%WINDIR%/temp\mor1.cmd
ECHO @pause    >> "%WINDIR%/temp\mor1.cmd
ECHO ECHO. ^& ECHO Normal Mode Complete! >> "%WINDIR%/temp\mor1.cmd
ECHO START /MIN "Uninstall" "CMD.EXE" /C RD /S /Q "%WINDIR%/temp"        >> "%WINDIR%/temp\mor1.cmd


:Mor2
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




:Mor3
ECHO TITLE Advanced Mode >> "%WINDIR%/temp\mor3.cmd
ECHO msg %username% /w Save Your Work Now  >> "%WINDIR%/temp\mor3.cmd
ECHO @ECHO OFF ^& CLS ^& NET SESSION ^>NUL 2^>^&1       >> "%WINDIR%/temp\mor3.cmd
ECHO @REM This Software is created By RpJect.  >> "%WINDIR%/temp\mor3.cmd
ECHO @REM https://github.com/RpJect/Auto-Tune  >> "%WINDIR%/temp\mor3.cmd
ECHO @REM This Program Uses Microsoft Windows Built-in Tools  >> "%WINDIR%/temp\mor3.cmd
ECHO @ECHO (1/10)  >> "%WINDIR%/temp\mor3.cmd 
ECHO @START /B /W /HIGH powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61   >> "%WINDIR%/temp\mor3.cmd
ECHO msg %username% Choose ultimate performance  >> "%WINDIR%/temp\mor3.cmd
ECHO powercfg.cpl  >> "%WINDIR%/temp\mor3.cmd
ECHO @ECHO (2/10)  >> "%WINDIR%/temp\mor3.cmd 
ECHO mschedexe.exe start >> "%WINDIR%/temp\mor3.cmd
ECHO @Dism.exe /online /Cleanup-Image /StartComponentCleanup /ResetBase  >> "%WINDIR%/temp\mor3.cmd
ECHO @ECHO (3/10)  >> "%WINDIR%/temp\mor3.cmd 
ECHO @del %temp%\*.* /s /q   >> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH rundll32.exe inetcpl.cpl,ClearMyTracksByProcess 4351   >> "%WINDIR%/temp\mor3.cmd
ECHO @rmdir /S /Q %SystemDrive%\i386   >> "%WINDIR%/temp\mor3.cmd
ECHO @del /F /Q %WINDIR%\logs\CBS\*    >> "%WINDIR%/temp\mor3.cmd
ECHO @ECHO (4/10)  >> "%WINDIR%/temp\mor3.cmd 
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
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_corpext.msitadfs.glbdns2.microsoft.com" dir=out action=block remoteip=131.107.113.238 enable=yes		>> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_compatexchange.cloudapp.net" dir=out action=block remoteip=23.99.10.11 enable=yes		>> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_cs1.wpc.v0cdn.net" dir=out action=block remoteip=68.232.34.200 enable=yes		>> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_a-0001.a-msedge.net" dir=out action=block remoteip=204.79.197.200 enable=yes		>> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_statsfe2.update.microsoft.com.akadns.net" dir=out action=block remoteip=64.4.54.22 enable=yes		>> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_sls.update.microsoft.com.akadns.net" dir=out action=block remoteip=157.56.77.139 enable=yes		>> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_fe2.update.microsoft.com.akadns.net" dir=out action=block remoteip=134.170.58.121,134.170.58.123,134.170.53.29,66.119.144.190,134.170.58.189,134.170.58.118,134.170.53.30,134.170.51.190 enable=yes		>> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_diagnostics.support.microsoft.com" dir=out action=block remoteip=157.56.121.89 enable=yes		>> "%WINDIR%/temp\mor3.cmd
ECHO @START /B /W /HIGH netsh advfirewall firewall add rule name="telemetry_corp.sts.microsoft.com" dir=out action=block remoteip=131.107.113.238 enable=yes		>> "%WINDIR%/temp\mor3.cmd
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
ECHO @ECHO (5/10)  >> "%WINDIR%/temp\mor3.cmd 
ECHO @START /B /W /HIGH chkdsk /scan /perf >> "%WINDIR%/temp\mor3.cmd
ECHO @ECHO (6/10)  >> "%WINDIR%/temp\mor3.cmd 
ECHO @START /B /W /HIGH sfc /scannow  >> "%WINDIR%/temp\mor3.cmd
ECHO @ECHO (7/10)  >> "%WINDIR%/temp\mor3.cmd 
ECHO @START /B /W /HIGH DISM.exe /Online /Cleanup-image /Restorehealth  >> "%WINDIR%/temp\mor3.cmd
ECHO @ECHO (8/10)  >> "%WINDIR%/temp\mor3.cmd 
ECHO @ECHO (9/10)  >> "%WINDIR%/temp\mor3.cmd 
ECHO @START /B /W /HIGH sfc /scannow  >> "%WINDIR%/temp\mor3.cmd
ECHO @ECHO (10/10)  >> "%WINDIR%/temp\mor3.cmd 
ECHO @START /B /W /HIGH Defrag /C /B /O /V  >> "%WINDIR%/temp\mor3.cmd
ECHO msg %username% Attention !! Save Your Work Now  >> "%WINDIR%/temp\mor3.cmd
ECHO @ECHO Good Jop The Fix is Done    >> "%WINDIR%/temp\mor3.cmd
ECHO ECHO. ^& ECHO Advanced Mode Complete! >> "%WINDIR%/temp\mor3.cmd
ECHO START /MIN "Uninstall" "CMD.EXE" /C RD /S /Q "%WINDIR%/temp"        >> "%WINDIR%/temp\mor3.cmd




:Mor4
ECHO TITLE SOS Mode >> "%WINDIR%/temp\mor4.cmd
ECHO @ECHO OFF ^& CLS ^& NET SESSION ^>NUL 2^>^&1       >> "%WINDIR%/temp\mor4.cmd
ECHO @REM This Software is created By RpJect.  >> "%WINDIR%/temp\mor4.cmd
ECHO @REM https://github.com/RpJect/Auto-Tune  >> "%WINDIR%/temp\mor4.cmd
ECHO @REM This Program Uses Microsoft Windows Built-in Tools  >> "%WINDIR%/temp\mor4.cmd
ECHO @SETLOCAL  >> "%WINDIR%/temp\mor4.cmd
ECHO msg %username% /w Save Your Work Now  >> "%WINDIR%/temp\mor4.cmd
ECHO @ECHO (1/9)  >> "%WINDIR%/temp\mor4.cmd 
ECHO @ECHO (2/9)  >> "%WINDIR%/temp\mor4.cmd  
ECHO @START /B /W /HIGH  Dism.exe /online /Cleanup-Image /StartComponentCleanup /ResetBase  >> "%WINDIR%/temp\mor4.cmd
ECHO @ECHO (3/9)  >> "%WINDIR%/temp\mor4.cmd  
ECHO del %temp%\*.* /s /q   >> "%WINDIR%/temp\mor4.cmd
ECHO @ECHO (4/9)  >> "%WINDIR%/temp\mor4.cmd
ECHO del /F /Q %WINDIR%\logs\CBS\*    >> "%WINDIR%/temp\mor4.cmd
ECHO @ECHO (5/9)  >> "%WINDIR%/temp\mor4.cmd    
ECHO @START /B /W /HIGH chkdsk /scan /perf  >> "%WINDIR%/temp\mor4.cmd
ECHO @ECHO (6/9)  >> "%WINDIR%/temp\mor4.cmd  
ECHO @START /B /W /HIGH sfc /scannow  >> "%WINDIR%/temp\mor4.cmd
ECHO @ECHO (7/9)  >> "%WINDIR%/temp\mor4.cmd  
ECHO @START /B /W /HIGH DISM.exe /Online /Cleanup-image /Restorehealth  >> "%WINDIR%/temp\mor4.cmd
ECHO @ECHO (8/9)  >> "%WINDIR%/temp\mor4.cmd  
ECHO @START /B /W /HIGH sfc /scannow  >> "%WINDIR%/temp\mor4.cmd
ECHO @ECHO (9/9)  >> "%WINDIR%/temp\mor4.cmd 
ECHO @START /B /W /HIGH defrag /C /H /v  >> "%WINDIR%/temp\mor4.cmd
ECHO @ECHO Good Jop The Fix is Done    >> "%WINDIR%/temp\mor4.cmd
ECHO ECHO. ^& ECHO SOS Mode Complete! >> "%WINDIR%/temp\mor4.cmd
ECHO msg %username% Attention !! Save Your Work Now  >> "%WINDIR%/temp\mor4.cmd
ECHO shutdown.exe /r  >> "%WINDIR%/temp\mor4.cmd
ECHO START /MIN "Uninstall" "CMD.EXE" /C RD /S /Q "%WINDIR%/temp"        >> "%WINDIR%/temp\mor4.cmd







:R
@color 0f
@cls
@echo.
@echo.
@echo.  ***************************************************************************************
@echo.  ***************************************************************************************
@ECHO.  ********************* Tune Using built-in Microsoft Windows Tools *********************
@echo.  ***************************************************************************************
@echo.  ***************************************************************************************
@echo.
@echo.
@ECHO              Please Type The Letter for The Option You Want To Perform.
@ECHO              All Of These Options Should Help Your Computer To Get Fixed.
@ECHO.
@echo.
@echo.                              --------------------
@echo                               (Choose your option) 
@echo.                              --------------------
@echo.
@echo.
@echo                      Type      "A"    ::  Normal Mode :: { Quick And Fast }
@echo.
@echo                      Type      "B"    ::  Performance Mode  :: { Recommended }  
@echo.
@echo                      Type      "C"    ::  Advanced Mode ::{ Long Time But Worth } "Need Shutdown"
@echo.
@echo                      Type      "D"    ::  SOS Mode  ::{ Fix All Windows Errors } "Need Restart"
@echo.
@echo                      Type      "E"    :: "Exit"
set/p "cho="
if %cho%==A goto 1
if %cho%==a goto 1
if %cho%==B goto 2
if %cho%==b goto 2
if %cho%==C goto 3
if %cho%==c goto 3
if %cho%==D goto 4
if %cho%==d goto 4
if %cho%==E goto E
if %cho%==e goto E


:E

@pause

@exit

------------------------------------------------------------------------------------------------
:1


start "CMD.EXE" "%WINDIR%/temp\mor1.cmd" 



@exit



:2
@START /HIGH wmic.exe /Namespace:\\root\default Path SystemRestore Call CreateRestorePoint "<My Restore Point Name >", 100, 7

start "CMD.EXE" "%WINDIR%/temp\mor2.cmd" 




@exit




:3
@START /HIGH wmic.exe /Namespace:\\root\default Path SystemRestore Call CreateRestorePoint "<My Restore Point Name >", 100, 7

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
@START /HIGH wmic.exe /Namespace:\\root\default Path SystemRestore Call CreateRestorePoint "<My Restore Point Name >", 100, 7

start "CMD.EXE" "%WINDIR%/temp\mor4.cmd" 






@exit


:not_admin
echo ERROR: Please run as a local administrator.
msg %username% Error !! Run as Administrator !!
exit /b 1
