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

MKDir "C:/temp

:Mor1
ECHO TITLE Normal Mode >> "C:/temp\mor1.cmd
ECHO @ECHO OFF ^& CLS ^& NET SESSION ^>NUL 2^>^&1       >> "C:/temp\mor1.cmd
ECHO @REM This Software is created By RpJect.  >> "C:/temp\mor1.cmd
ECHO @REM https://github.com/RpJect/Auto-Tune  >> "C:/temp\mor1.cmd
ECHO @REM This Program Uses Microsoft Windows Built-in Tools  >> "C:/temp\mor1.cmd
ECHO @SETLOCAL  >> "C:/temp\mor1.cmd
ECHO @ECHO (1/3)  >> "C:/temp\mor1.cmd
ECHO mschedexe.exe start >> "C:/temp\mor1.cmd
ECHO @ECHO (2/3)  >> "C:/temp\mor1.cmd
ECHO del %temp%\*.* /s /q   >> "C:/temp\mor1.cmd
ECHO @ECHO (3/3)  >> "C:/temp\mor1.cmd
ECHO @START /B /W cleanmgr /slevel Low /nocleanup  >> "C:/temp\mor1.cmd
ECHO @ECHO Good Jop The Fix is Done    >> "C:/temp\mor1.cmd
ECHO @pause    >> "C:/temp\mor1.cmd
ECHO ECHO. ^& ECHO Normal Mode Complete! >> "C:/temp\mor1.cmd
ECHO START /MIN "Uninstall" "CMD.EXE" /C RD /S /Q "C:/temp"        >> "C:/temp\mor1.cmd


:Mor2
ECHO TITLE Performance Mode >> "C:/temp\mor2.cmd
ECHO @ECHO OFF ^& CLS ^& NET SESSION ^>NUL 2^>^&1       >> "C:/temp\mor2.cmd
ECHO @REM This Software is created By RpJect.  >> "C:/temp\mor2.cmd
ECHO @REM https://github.com/RpJect/Auto-Tune  >> "C:/temp\mor2.cmd
ECHO @REM This Program Uses Microsoft Windows Built-in Tools  >> "C:/temp\mor2.cmd
ECHO @SETLOCAL  >> "C:/temp\mor2.cmd
ECHO @ECHO (1/9)   >> "C:/temp\mor2.cmd
ECHO mschedexe.exe start >> "C:/temp\mor2.cmd
ECHO @ECHO (2/9)   >> "C:/temp\mor2.cmd
ECHO cleanmgr.exe /d C: /VERYLOWDISK  >> "C:/temp\mor2.cmd
ECHO @ECHO (3/9)   >> "C:/temp\mor2.cmd
ECHO @START /B /W Dism.exe /online /Cleanup-Image /StartComponentCleanup /ResetBase  >> "C:/temp\mor2.cmd
ECHO @ECHO (4/9)   >> "C:/temp\mor2.cmd
ECHO del %temp%\*.* /s /q   >> "C:/temp\mor2.cmd
ECHO @ECHO (5/9)   >> "C:/temp\mor2.cmd
ECHO ipconfig /flushdns  >> "C:/temp\mor2.cmd
ECHO @ECHO (6/9)   >> "C:/temp\mor2.cmd
ECHO rundll32.exe inetcpl.cpl,ClearMyTracksByProcess 4351   >> "C:/temp\mor2.cmd
ECHO @ECHO (7/9)   >> "C:/temp\mor2.cmd
ECHO rmdir /S /Q %SystemDrive%\i386   >> "C:/temp\mor2.cmd
ECHO @ECHO (8/9)   >> "C:/temp\mor2.cmd
ECHO del /F /Q %WINDIR%\logs\CBS\*    >> "C:/temp\mor2.cmd
ECHO @ECHO (9/9)   >> "C:/temp\mor2.cmd
ECHO defrag /C /H /V  >> "C:/temp\mor2.cmd
ECHO @ECHO Good Jop The Fix is Done    >> "C:/temp\mor2.cmd
ECHO @pause    >> "C:/temp\mor2.cmd
ECHO ECHO. ^& ECHO Performance Mode Complete! >> "C:/temp\mor2.cmd
ECHO START /MIN "Uninstall" "CMD.EXE" /C RD /S /Q "C:/temp"        >> "C:/temp\mor2.cmd




:Mor3
ECHO TITLE Advanced Mode >> "C:/temp\mor3.cmd
ECHO msg %username% Save Your Work Now  >> "C:/temp\mor3.cmd
ECHO @ECHO OFF ^& CLS ^& NET SESSION ^>NUL 2^>^&1       >> "C:/temp\mor3.cmd
ECHO @REM This Software is created By RpJect.  >> "C:/temp\mor3.cmd
ECHO @REM https://github.com/RpJect/Auto-Tune  >> "C:/temp\mor3.cmd
ECHO @REM This Program Uses Microsoft Windows Built-in Tools  >> "C:/temp\mor3.cmd
ECHO @ECHO (1/10)  >> "C:/temp\mor3.cmd 
ECHO @START /B /W powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61   >> "C:/temp\mor3.cmd
ECHO msg %username% Choose ultimate performance  >> "C:/temp\mor3.cmd
ECHO powercfg.cpl  >> "C:/temp\mor3.cmd
ECHO @ECHO (2/10)  >> "C:/temp\mor3.cmd 
ECHO mschedexe.exe start >> "C:/temp\mor3.cmd
ECHO @cleanmgr.exe /d C: /VERYLOWDISK  >> "C:/temp\mor3.cmd
ECHO @Dism.exe /online /Cleanup-Image /StartComponentCleanup /ResetBase  >> "C:/temp\mor3.cmd
ECHO @ECHO (3/10)  >> "C:/temp\mor3.cmd 
ECHO @del %temp%\*.* /s /q   >> "C:/temp\mor3.cmd
ECHO @START /B /W rundll32.exe inetcpl.cpl,ClearMyTracksByProcess 4351   >> "C:/temp\mor3.cmd
ECHO @rmdir /S /Q %SystemDrive%\i386   >> "C:/temp\mor3.cmd
ECHO @del /F /Q %WINDIR%\logs\CBS\*    >> "C:/temp\mor3.cmd
ECHO @ECHO (4/10)  >> "C:/temp\mor3.cmd 
ECHO @START /B /W netsh advfirewall firewall add rule name="telemetry_vortex.data.microsoft.com" dir=out action=block remoteip=191.232.139.254 enable=yes		>> "C:/temp\mor3.cmd
ECHO @START /B /W netsh advfirewall firewall add rule name="telemetry_telecommand.telemetry.microsoft.com" dir=out action=block remoteip=65.55.252.92 enable=yes		>> "C:/temp\mor3.cmd
ECHO @START /B /W netsh advfirewall firewall add rule name="telemetry_oca.telemetry.microsoft.com" dir=out action=block remoteip=65.55.252.63 enable=yes		>> "C:/temp\mor3.cmd
ECHO @START /B /W netsh advfirewall firewall add rule name="telemetry_sqm.telemetry.microsoft.com" dir=out action=block remoteip=65.55.252.93 enable=yes		>> "C:/temp\mor3.cmd
ECHO @START /B /W netsh advfirewall firewall add rule name="telemetry_watson.telemetry.microsoft.com" dir=out action=block remoteip=65.55.252.43,65.52.108.29 enable=yes		>> "C:/temp\mor3.cmd
ECHO @START /B /W netsh advfirewall firewall add rule name="telemetry_redir.metaservices.microsoft.com" dir=out action=block remoteip=194.44.4.200,194.44.4.208 enable=yes		>> "C:/temp\mor3.cmd
ECHO @START /B /W netsh advfirewall firewall add rule name="telemetry_choice.microsoft.com" dir=out action=block remoteip=157.56.91.77 enable=yes		>> "C:/temp\mor3.cmd
ECHO @START /B /W netsh advfirewall firewall add rule name="telemetry_df.telemetry.microsoft.com" dir=out action=block remoteip=65.52.100.7 enable=yes		>> "C:/temp\mor3.cmd
ECHO @START /B /W netsh advfirewall firewall add rule name="telemetry_reports.wes.df.telemetry.microsoft.com" dir=out action=block remoteip=65.52.100.91 enable=yes		>> "C:/temp\mor3.cmd
ECHO @START /B /W netsh advfirewall firewall add rule name="telemetry_wes.df.telemetry.microsoft.com" dir=out action=block remoteip=65.52.100.93 enable=yes		>> "C:/temp\mor3.cmd
ECHO @START /B /W netsh advfirewall firewall add rule name="telemetry_services.wes.df.telemetry.microsoft.com" dir=out action=block remoteip=65.52.100.92 enable=yes		>> "C:/temp\mor3.cmd
ECHO @START /B /W netsh advfirewall firewall add rule name="telemetry_sqm.df.telemetry.microsoft.com" dir=out action=block remoteip=65.52.100.94 enable=yes		>> "C:/temp\mor3.cmd
ECHO @START /B /W netsh advfirewall firewall add rule name="telemetry_telemetry.microsoft.com" dir=out action=block remoteip=65.52.100.9 enable=yes		>> "C:/temp\mor3.cmd
ECHO @START /B /W netsh advfirewall firewall add rule name="telemetry_watson.ppe.telemetry.microsoft.com" dir=out action=block remoteip=65.52.100.11 enable=yes		>> "C:/temp\mor3.cmd
ECHO @START /B /W netsh advfirewall firewall add rule name="telemetry_telemetry.appex.bing.net" dir=out action=block remoteip=168.63.108.233 enable=yes		>> "C:/temp\mor3.cmd
ECHO @START /B /W netsh advfirewall firewall add rule name="telemetry_telemetry.urs.microsoft.com" dir=out action=block remoteip=157.56.74.250 enable=yes		>> "C:/temp\mor3.cmd
ECHO @START /B /W netsh advfirewall firewall add rule name="telemetry_settings-sandbox.data.microsoft.com" dir=out action=block remoteip=111.221.29.177 enable=yes		>> "C:/temp\mor3.cmd
ECHO @START /B /W netsh advfirewall firewall add rule name="telemetry_vortex-sandbox.data.microsoft.com" dir=out action=block remoteip=64.4.54.32 enable=yes		>> "C:/temp\mor3.cmd
ECHO @START /B /W netsh advfirewall firewall add rule name="telemetry_survey.watson.microsoft.com" dir=out action=block remoteip=207.68.166.254 enable=yes		>> "C:/temp\mor3.cmd
ECHO @START /B /W netsh advfirewall firewall add rule name="telemetry_watson.live.com" dir=out action=block remoteip=207.46.223.94 enable=yes		>> "C:/temp\mor3.cmd
ECHO @START /B /W netsh advfirewall firewall add rule name="telemetry_watson.microsoft.com" dir=out action=block remoteip=65.55.252.71 enable=yes		>> "C:/temp\mor3.cmd
ECHO @START /B /W netsh advfirewall firewall add rule name="telemetry_statsfe2.ws.microsoft.com" dir=out action=block remoteip=64.4.54.22 enable=yes		>> "C:/temp\mor3.cmd
ECHO @START /B /W netsh advfirewall firewall add rule name="telemetry_corpext.msitadfs.glbdns2.microsoft.com" dir=out action=block remoteip=131.107.113.238 enable=yes		>> "C:/temp\mor3.cmd
ECHO @START /B /W netsh advfirewall firewall add rule name="telemetry_compatexchange.cloudapp.net" dir=out action=block remoteip=23.99.10.11 enable=yes		>> "C:/temp\mor3.cmd
ECHO @START /B /W netsh advfirewall firewall add rule name="telemetry_cs1.wpc.v0cdn.net" dir=out action=block remoteip=68.232.34.200 enable=yes		>> "C:/temp\mor3.cmd
ECHO @START /B /W netsh advfirewall firewall add rule name="telemetry_a-0001.a-msedge.net" dir=out action=block remoteip=204.79.197.200 enable=yes		>> "C:/temp\mor3.cmd
ECHO @START /B /W netsh advfirewall firewall add rule name="telemetry_statsfe2.update.microsoft.com.akadns.net" dir=out action=block remoteip=64.4.54.22 enable=yes		>> "C:/temp\mor3.cmd
ECHO @START /B /W netsh advfirewall firewall add rule name="telemetry_sls.update.microsoft.com.akadns.net" dir=out action=block remoteip=157.56.77.139 enable=yes		>> "C:/temp\mor3.cmd
ECHO @START /B /W netsh advfirewall firewall add rule name="telemetry_fe2.update.microsoft.com.akadns.net" dir=out action=block remoteip=134.170.58.121,134.170.58.123,134.170.53.29,66.119.144.190,134.170.58.189,134.170.58.118,134.170.53.30,134.170.51.190 enable=yes		>> "C:/temp\mor3.cmd
ECHO @START /B /W netsh advfirewall firewall add rule name="telemetry_diagnostics.support.microsoft.com" dir=out action=block remoteip=157.56.121.89 enable=yes		>> "C:/temp\mor3.cmd
ECHO @START /B /W netsh advfirewall firewall add rule name="telemetry_corp.sts.microsoft.com" dir=out action=block remoteip=131.107.113.238 enable=yes		>> "C:/temp\mor3.cmd
ECHO @START /B /W netsh advfirewall firewall add rule name="telemetry_statsfe1.ws.microsoft.com" dir=out action=block remoteip=134.170.115.60 enable=yes		>> "C:/temp\mor3.cmd
ECHO @START /B /W netsh advfirewall firewall add rule name="telemetry_pre.footprintpredict.com" dir=out action=block remoteip=204.79.197.200 enable=yes		>> "C:/temp\mor3.cmd
ECHO @START /B /W netsh advfirewall firewall add rule name="telemetry_i1.services.social.microsoft.com" dir=out action=block remoteip=104.82.22.249 enable=yes		>> "C:/temp\mor3.cmd
ECHO @START /B /W netsh advfirewall firewall add rule name="telemetry_feedback.windows.com" dir=out action=block remoteip=134.170.185.70 enable=yes		>> "C:/temp\mor3.cmd
ECHO @START /B /W netsh advfirewall firewall add rule name="telemetry_feedback.microsoft-hohm.com" dir=out action=block remoteip=64.4.6.100,65.55.39.10 enable=yes		>> "C:/temp\mor3.cmd
ECHO @START /B /W netsh advfirewall firewall add rule name="telemetry_feedback.search.microsoft.com" dir=out action=block remoteip=157.55.129.21 enable=yes		>> "C:/temp\mor3.cmd
ECHO @START /B /W netsh advfirewall firewall add rule name="telemetry_rad.msn.com" dir=out action=block remoteip=207.46.194.25 enable=yes		>> "C:/temp\mor3.cmd
ECHO @START /B /W netsh advfirewall firewall add rule name="telemetry_preview.msn.com" dir=out action=block remoteip=23.102.21.4 enable=yes		>> "C:/temp\mor3.cmd
ECHO @START /B /W netsh advfirewall firewall add rule name="telemetry_dart.l.doubleclick.net" dir=out action=block remoteip=173.194.113.220,173.194.113.219,216.58.209.166 enable=yes		>> "C:/temp\mor3.cmd
ECHO @START /B /W netsh advfirewall firewall add rule name="telemetry_ads.msn.com" dir=out action=block remoteip=157.56.91.82,157.56.23.91,104.82.14.146,207.123.56.252,185.13.160.61,8.254.209.254 enable=yes		>> "C:/temp\mor3.cmd
ECHO @START /B /W netsh advfirewall firewall add rule name="telemetry_a.ads1.msn.com" dir=out action=block remoteip=198.78.208.254,185.13.160.61 enable=yes		>> "C:/temp\mor3.cmd
ECHO @START /B /W netsh advfirewall firewall add rule name="telemetry_global.msads.net.c.footprint.net" dir=out action=block remoteip=185.13.160.61,8.254.209.254,207.123.56.252 enable=yes		>> "C:/temp\mor3.cmd
ECHO @START /B /W netsh advfirewall firewall add rule name="telemetry_az361816.vo.msecnd.net" dir=out action=block remoteip=68.232.34.200 enable=yes		>> "C:/temp\mor3.cmd
ECHO @START /B /W netsh advfirewall firewall add rule name="telemetry_oca.telemetry.microsoft.com.nsatc.net" dir=out action=block remoteip=65.55.252.63 enable=yes		>> "C:/temp\mor3.cmd
ECHO @START /B /W netsh advfirewall firewall add rule name="telemetry_reports.wes.df.telemetry.microsoft.com" dir=out action=block remoteip=65.52.100.91 enable=yes		>> "C:/temp\mor3.cmd
ECHO @START /B /W netsh advfirewall firewall add rule name="telemetry_df.telemetry.microsoft.com" dir=out action=block remoteip=65.52.100.7 enable=yes		>> "C:/temp\mor3.cmd
ECHO @START /B /W netsh advfirewall firewall add rule name="telemetry_cs1.wpc.v0cdn.net" dir=out action=block remoteip=68.232.34.200 enable=yes		>> "C:/temp\mor3.cmd
ECHO @START /B /W netsh advfirewall firewall add rule name="telemetry_vortex-sandbox.data.microsoft.com" dir=out action=block remoteip=64.4.54.32 enable=yes		>> "C:/temp\mor3.cmd
ECHO @START /B /W netsh advfirewall firewall add rule name="telemetry_pre.footprintpredict.com" dir=out action=block remoteip=204.79.197.200 enable=yes		>> "C:/temp\mor3.cmd
ECHO @START /B /W netsh advfirewall firewall add rule name="telemetry_i1.services.social.microsoft.com" dir=out action=block remoteip=104.82.22.249 enable=yes		>> "C:/temp\mor3.cmd
ECHO @START /B /W netsh advfirewall firewall add rule name="telemetry_ssw.live.com" dir=out action=block remoteip=207.46.101.29 enable=yes		>> "C:/temp\mor3.cmd
ECHO @START /B /W netsh advfirewall firewall add rule name="telemetry_statsfe1.ws.microsoft.com" dir=out action=block remoteip=134.170.115.60 enable=yes		>> "C:/temp\mor3.cmd
ECHO @START /B /W netsh advfirewall firewall add rule name="telemetry_msnbot-65-55-108-23.search.msn.com" dir=out action=block remoteip=65.55.108.23 enable=yes		>> "C:/temp\mor3.cmd
ECHO @START /B /W netsh advfirewall firewall add rule name="telemetry_a23-218-212-69.deploy.static.akamaitechnologies.com" dir=out action=block remoteip=23.218.212.69 enable=yes`		>> "C:/temp\mor3.cmd
ECHO @ECHO (5/10)  >> "C:/temp\mor3.cmd 
ECHO @START /B /W chkdsk /scan /perf >> "C:/temp\mor3.cmd
ECHO @ECHO (6/10)  >> "C:/temp\mor3.cmd 
ECHO @START /B /W sfc /scannow  >> "C:/temp\mor3.cmd
ECHO @ECHO (7/10)  >> "C:/temp\mor3.cmd 
ECHO @START /B /W DISM.exe /Online /Cleanup-image /Restorehealth  >> "C:/temp\mor3.cmd
ECHO @ECHO (8/10)  >> "C:/temp\mor3.cmd 
ECHO @ECHO (9/10)  >> "C:/temp\mor3.cmd 
ECHO @START /B /W sfc /scannow  >> "C:/temp\mor3.cmd
ECHO @ECHO (10/10)  >> "C:/temp\mor3.cmd 
ECHO @START /B /W Defrag /C /B /O /V  >> "C:/temp\mor3.cmd
ECHO msg %username% Attention !! Save Your Work Now  >> "C:/temp\mor3.cmd
ECHO @ECHO Good Jop The Fix is Done    >> "C:/temp\mor3.cmd
ECHO ECHO. ^& ECHO Advanced Mode Complete! >> "C:/temp\mor3.cmd
ECHO START /MIN "Uninstall" "CMD.EXE" /C RD /S /Q "C:/temp"        >> "C:/temp\mor3.cmd




:Mor4
ECHO TITLE SOS Mode >> "C:/temp\mor4.cmd
ECHO @ECHO OFF ^& CLS ^& NET SESSION ^>NUL 2^>^&1       >> "C:/temp\mor4.cmd
ECHO @REM This Software is created By RpJect.  >> "C:/temp\mor4.cmd
ECHO @REM https://github.com/RpJect/Auto-Tune  >> "C:/temp\mor4.cmd
ECHO @REM This Program Uses Microsoft Windows Built-in Tools  >> "C:/temp\mor4.cmd
ECHO @SETLOCAL  >> "C:/temp\mor4.cmd
ECHO msg %username% Save Your Work Now  >> "C:/temp\mor4.cmd
ECHO @ECHO (1/9)  >> "C:/temp\mor4.cmd 
ECHO cleanmgr.exe /d C: /VERYLOWDISK  >> "C:/temp\mor4.cmd
ECHO @ECHO (2/9)  >> "C:/temp\mor4.cmd  
ECHO @START /B /W Dism.exe /online /Cleanup-Image /StartComponentCleanup /ResetBase  >> "C:/temp\mor4.cmd
ECHO @ECHO (3/9)  >> "C:/temp\mor4.cmd  
ECHO del %temp%\*.* /s /q   >> "C:/temp\mor4.cmd
ECHO @ECHO (4/9)  >> "C:/temp\mor4.cmd
ECHO del /F /Q %WINDIR%\logs\CBS\*    >> "C:/temp\mor4.cmd
ECHO @ECHO (5/9)  >> "C:/temp\mor4.cmd    
ECHO @START /B /W chkdsk /scan /perf  >> "C:/temp\mor4.cmd
ECHO @ECHO (6/9)  >> "C:/temp\mor4.cmd  
ECHO @START /B /W sfc /scannow  >> "C:/temp\mor4.cmd
ECHO @ECHO (7/9)  >> "C:/temp\mor4.cmd  
ECHO @START /B /W DISM.exe /Online /Cleanup-image /Restorehealth  >> "C:/temp\mor4.cmd
ECHO @ECHO (8/9)  >> "C:/temp\mor4.cmd  
ECHO @START /B /W sfc /scannow  >> "C:/temp\mor4.cmd
ECHO @ECHO (9/9)  >> "C:/temp\mor4.cmd 
ECHO @START /B /W defrag /C /H /v  >> "C:/temp\mor4.cmd
ECHO @ECHO Good Jop The Fix is Done    >> "C:/temp\mor4.cmd
ECHO ECHO. ^& ECHO SOS Mode Complete! >> "C:/temp\mor4.cmd
ECHO msg %username% Attention !! Save Your Work Now  >> "C:/temp\mor4.cmd
ECHO shutdown.exe /r  >> "C:/temp\mor4.cmd
ECHO START /MIN "Uninstall" "CMD.EXE" /C RD /S /Q "C:/temp"        >> "C:/temp\mor4.cmd







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


start "CMD.EXE" "c:/temp\mor1.cmd" 



@exit



:2
wmic.exe /Namespace:\\root\default Path SystemRestore Call CreateRestorePoint "<My Restore Point Name >", 100, 7

start "CMD.EXE" "c:/temp\mor2.cmd" 




@exit




:3
wmic.exe /Namespace:\\root\default Path SystemRestore Call CreateRestorePoint "<My Restore Point Name >", 100, 7

start "CMD.EXE" "c:/temp\mor3.cmd" 


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

start "CMD.EXE" "c:/temp\mor4.cmd" 






@exit


:not_admin
echo ERROR: Please run as a local administrator.
msg %username% Error !! Run as Administrator !!
exit /b 1
