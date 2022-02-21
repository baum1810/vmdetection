@echo off
powershell -Command "Get-WmiObject Win32_PortConnector" >%localappdata%\Temp\antivm.txt
findstr /m "Port Connector" %localappdata%\Temp\antivm.txt 
if %errorlevel%==0 (
goto a
)

cls
del %localappdata%\Temp\antivm.txt
echo Please Don't run this programm in a Virtual environment
pause >NUL
exit

:a
del %localappdata%\Temp\antivm.txt
echo not a virtual machine
pause
