$ErrorActionPreference = 'Stop'
$Root = Join-Path $env:LOCALAPPDATA 'Programs\Atlas Simulation Studio'
New-Item -ItemType Directory -Force -Path $Root | Out-Null
Get-ChildItem -LiteralPath $PSScriptRoot | Where-Object Name -ne 'install.ps1' | Copy-Item -Destination $Root -Recurse -Force
$ShortcutPath = Join-Path ([Environment]::GetFolderPath('Desktop')) 'Atlas Simulation Studio.lnk'
$Shell = New-Object -ComObject WScript.Shell
$Shortcut = $Shell.CreateShortcut($ShortcutPath)
$Shortcut.TargetPath = Join-Path $Root 'index.html'
$Shortcut.WorkingDirectory = $Root
$Shortcut.Description = 'Atlas Simulation Studio'
$Shortcut.Save()
$StartMenu = Join-Path $env:APPDATA 'Microsoft\Windows\Start Menu\Programs'
$Shortcut = $Shell.CreateShortcut((Join-Path $StartMenu 'Atlas Simulation Studio.lnk'))
$Shortcut.TargetPath = Join-Path $Root 'index.html'
$Shortcut.WorkingDirectory = $Root
$Shortcut.Description = 'Atlas Simulation Studio'
$Shortcut.Save()
Start-Process (Join-Path $Root 'index.html')
