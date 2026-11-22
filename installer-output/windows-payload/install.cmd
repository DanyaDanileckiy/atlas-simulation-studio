@echo off
setlocal
set "DEST=%LOCALAPPDATA%\Programs\Atlas Simulation Studio"
if not exist "%DEST%" mkdir "%DEST%"
copy /y "%~dp0index.html" "%DEST%\index.html" >nul
copy /y "%~dp0icon.svg" "%DEST%\icon.svg" >nul
copy /y "%~dp0manifest.webmanifest" "%DEST%\manifest.webmanifest" >nul
copy /y "%~dp0sw.js" "%DEST%\sw.js" >nul
powershell -NoProfile -ExecutionPolicy Bypass -Command "$s=(New-Object -COM WScript.Shell).CreateShortcut((Join-Path $env:USERPROFILE 'Desktop\Atlas Simulation Studio.lnk'));$s.TargetPath=(Join-Path $env:LOCALAPPDATA 'Programs\Atlas Simulation Studio\index.html');$s.Save()" >nul 2>&1
start "" "%DEST%\index.html"
exit /b 0
