@echo off
chcp 65001 >nul
title JARVIS
cd /d "%~dp0"

py -3 --version >nul 2>nul
if %errorlevel%==0 goto mitpy

python --version >nul 2>nul
if %errorlevel%==0 goto mitpython

echo.
echo   Python wurde nicht gefunden.
echo   Bitte von https://www.python.org installieren.
echo   Beim Installieren den Haken bei "Add python.exe to PATH" setzen.
echo.
pause
exit /b

:mitpy
py -3 server.py
goto ende

:mitpython
python server.py

:ende
echo.
echo   Jarvis wurde beendet.
pause
