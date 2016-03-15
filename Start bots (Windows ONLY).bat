@echo off
cd /d %~dp0

if not exist "node_modules" (
echo [ERROR]CODE 1: Folder "node_modules" not found! Try to reinstall depedencies...
echo.
echo Press any key to quit the process(close)...
pause >nul
exit
)

:loop
cls
call node feeder
goto loop
