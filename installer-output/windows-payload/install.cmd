@echo off
setlocal
set "DEST=%LOCALAPPDATA%\Programs\Atlas Simulation Studio"
if not exist "%DEST%\vendor" mkdir "%DEST%\vendor"
copy /y "%~dp0index.html" "%DEST%\index.html" >nul
copy /y "%~dp0icon.svg" "%DEST%\icon.svg" >nul
copy /y "%~dp0manifest.webmanifest" "%DEST%\manifest.webmanifest" >nul
copy /y "%~dp0sw.js" "%DEST%\sw.js" >nul
copy /y "%~dp0tailwindcss.js" "%DEST%\vendor\tailwindcss.js" >nul
copy /y "%~dp0d3.v7.min.js" "%DEST%\vendor\d3.v7.min.js" >nul
powershell -NoProfile -ExecutionPolicy Bypass -Command "$w=New-Object -COM WScript.Shell;$t=Join-Path $env:LOCALAPPDATA 'Programs\Atlas Simulation Studio\index.html';foreach($d in @([Environment]::GetFolderPath('Desktop'),(Join-Path $env:APPDATA 'Microsoft\Windows\Start Menu\Programs'))){$s=$w.CreateShortcut((Join-Path $d 'Atlas Simulation Studio.lnk'));$s.TargetPath=$t;$s.WorkingDirectory=(Split-Path $t);$s.Save()}" >nul 2>&1
start "" "%DEST%\index.html"
exit /b 0
