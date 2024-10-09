@echo off
mode 80, 30
title Toolbox - Ghost
chcp 65001 >nul
cd files

:start
cls
echo.
echo.
echo.
ping localhost -n 2 >nul
echo [38;5;88m                       	       ████████╗ ██████╗  ██████╗ ██╗     ██████╗  ██████╗ ██╗  ██╗ [0m
ping localhost -n 1 >nul
echo [38;5;124m                   	       ╚══██╔══╝██╔═══██╗██╔═══██╗██║     ██╔══██╗██╔═══██╗╚██╗██╔╝ [0m
ping localhost -n 1 >nul
echo [38;5;160m                     		  ██║   ██║   ██║██║   ██║██║     ██████╔╝██║   ██║ ╚███╔╝ [0m
ping localhost -n 1 >nul
echo [38;5;196m                     		  ██║   ██║   ██║██║   ██║██║     ██╔══██╗██║   ██║ ██╔██╗ [0m
ping localhost -n 1 >nul
echo [38;5;196m                       		  ██║   ╚██████╔╝╚██████╔╝███████╗██████╔╝╚██████╔╝██╔╝ ██╗ [0m
ping localhost -n 1 >nul
echo [38;5;196m		       		  ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝╚═════╝  ╚═════╝ ╚═╝  ╚═╝ [0m
ping localhost -n 1 >nul
echo.
echo.
echo.
echo.
:input
ping localhost -n 1 >nul
echo    [90;1m#╦════════════════════════════════════╦═════════════════════════════════════════════════════════»[0m  [92m[Exit] [0m [95m[E][0m
ping localhost -n 1 >nul
echo    [90;1m ║                                    ║[0m  [92m [0m [95m [0m
ping localhost -n 1 >nul
echo    [90;1m ║                                    ║[0m  [92m [0m [95m [0m
ping localhost -n 1 >nul
echo    [90;1m ║                                    ║[0m  [92m [0m [95m [0m
ping localhost -n 1 >nul
echo    [90;1m ╠═══════»[0m  [92m[Clear Temp Files][0m [95m[1][0m   [90;1m ╠═══════»[0m  [92m[Task Manager][0m [95m[4][0m
ping localhost -n 1 >nul
echo     [90;1m╠═══════»[0m  [92m[Kill VMware][0m  [95m[2][0m       [90;1m ╠═══════»[0m  [92m[Registry Editor][0m [95m[5][0m
ping localhost -n 1 >nul
echo     [90;1m╠═══════»[0m  [92m[Settings][0m   [95m[3][0m         [90;1m ╚═══════»[0m  [92m[Control Panel][0m [95m[6][0m
ping localhost -n 1 >nul
echo|set /p="[90;1m    ║[0m"
echo.
ping localhost -n 1 >nul
echo|set /p=".    [90;1m╚═══════> [0m"
ping localhost -n 1 >nul
choice /c 123456e >nul
if /I "%errorlevel%" EQU "1" (
  start Temp.bat
  goto :start
)
if /I "%errorlevel%" EQU "2" (
  start VMware.bat
  goto :start
)
if /I "%errorlevel%" EQU "3" (
  start Settings.bat
  goto :start
)
if /I "%errorlevel%" EQU "4" (
  start TaskManager.bat
  goto :start
)
if /I "%errorlevel%" EQU "5" (
  start RegistryEditor.bat
  goto :start
)
if /I "%errorlevel%" EQU "6" (
  start ControlPanel.bat
  goto :start
)
if /I "%errorlevel%" EQU "7" (
  exit /b
)
