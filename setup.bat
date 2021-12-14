@echo off
rem https://github.com/Liub0myr/ttl-mobile



rem main function
title TTL patcher
color f
call :admin
call :state
call :%task%
pause
exit



:admin
net session >nul 2>&1
if %errorLevel% == 0 (exit /b)
echo This operation requires administrator privileges
pause
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
echo UAC.ShellExecute "%SystemRoot%\System32\cmd.exe", "/c ""%~s0""", "", "runas", 1 >> "%temp%\getadmin.vbs"
"%temp%\getadmin.vbs"
del "%temp%\getadmin.vbs"
exit



:state
reg query "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v DefaultTTL > nul
if %errorLevel% == 0 (set task=disable) else (set task=enable)
cls
exit /b



:disable
echo Deleting...
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v DefaultTTL /f
echo TTL patch deleted
echo.
echo Restart the computer for the changes to take effect
echo.
exit /b



:enable
echo Enabling...
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v DefaultTTL /t REG_DWORD /d 65 /f
echo TTL patch installed
echo.
echo Restart the computer for the changes to take effect
echo.
exit /b