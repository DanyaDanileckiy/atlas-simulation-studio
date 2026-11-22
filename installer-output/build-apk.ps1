$ErrorActionPreference = 'Stop'
$Project = Split-Path $PSScriptRoot -Parent
$AndroidSdk = Join-Path $PSScriptRoot 'android-sdk'
$Jdk = Join-Path $PSScriptRoot 'jdk17\jdk-17.0.21.1+2'
$BuildTools = Join-Path $AndroidSdk 'build-tools\35.0.0'
$AndroidJar = Join-Path $AndroidSdk 'platforms\android-35\android.jar'
$KeyStore = Join-Path $PSScriptRoot 'keys\atlas-release.jks'
$KeyInfo = Get-Content (Join-Path $PSScriptRoot 'keys\SIGNING-KEY-INFO.txt') -Raw
$PasswordMatch = [regex]::Match($KeyInfo, '(?m)^Store/key password: (.+)$')
if (!$PasswordMatch.Success) { throw 'Signing password missing from key info file.' }
$Password = $PasswordMatch.Groups[1].Value.Trim()
$env:JAVA_HOME = $Jdk
$env:PATH = "$Jdk\bin;$BuildTools;$env:PATH"
$Stage = Join-Path $env:TEMP 'atlas-apk-build'
if (Test-Path $Stage) { Remove-Item -LiteralPath $Stage -Recurse -Force }
New-Item -ItemType Directory -Force -Path $Stage | Out-Null
Copy-Item (Join-Path $PSScriptRoot 'android-native\AndroidManifest.xml') -Destination $Stage
Copy-Item (Join-Path $PSScriptRoot 'android-native\src') -Destination $Stage -Recurse -Force
Copy-Item (Join-Path $PSScriptRoot 'android-native\res') -Destination $Stage -Recurse -Force
Copy-Item (Join-Path $PSScriptRoot 'android-native\assets') -Destination $Stage -Recurse -Force
Copy-Item $AndroidJar -Destination $Stage
Copy-Item $KeyStore -Destination (Join-Path $Stage 'atlas-release.jks')
$Classes = Join-Path $Stage 'classes'
$Dex = Join-Path $Stage 'dex'
New-Item -ItemType Directory -Force -Path $Classes, $Dex | Out-Null
& (Join-Path $Jdk 'bin\javac.exe') -source 8 -target 8 -encoding UTF-8 -proc:none -bootclasspath (Join-Path $Stage 'android.jar') -d $Classes (Join-Path $Stage 'src\com\atlas\simulationstudio\MainActivity.java')
if ($LASTEXITCODE -ne 0) { throw 'Java compilation failed.' }
& (Join-Path $BuildTools 'd8.bat') --lib (Join-Path $Stage 'android.jar') --output $Dex (Join-Path $Classes 'com\atlas\simulationstudio\MainActivity.class')
if ($LASTEXITCODE -ne 0) { throw 'DEX generation failed.' }
$Unsigned = Join-Path $Stage 'Atlas-Simulation-Studio-unsigned.apk'
& (Join-Path $BuildTools 'aapt.exe') package -f -M (Join-Path $Stage 'AndroidManifest.xml') -S (Join-Path $Stage 'res') -A (Join-Path $Stage 'assets') -I (Join-Path $Stage 'android.jar') --min-sdk-version 23 --target-sdk-version 35 --version-code 1 --version-name 1.0.0 -F $Unsigned
if ($LASTEXITCODE -ne 0) { throw 'APK resources/manifest packaging failed.' }
Push-Location $Dex
try { & (Join-Path $BuildTools 'aapt.exe') add $Unsigned classes.dex; if ($LASTEXITCODE -ne 0) { throw 'DEX insertion failed.' } }
finally { Pop-Location }
$Aligned = Join-Path $Stage 'Atlas-Simulation-Studio-aligned-unsigned.apk'
& (Join-Path $BuildTools 'zipalign.exe') -f -p 4 $Unsigned $Aligned
if ($LASTEXITCODE -ne 0) { throw 'APK alignment failed.' }
$Output = Join-Path $Stage 'Atlas-Simulation-Studio.apk'
$env:ATLAS_APK_PASS = $Password
& (Join-Path $BuildTools 'apksigner.bat') sign --ks (Join-Path $Stage 'atlas-release.jks') --ks-key-alias atlas-release --ks-pass env:ATLAS_APK_PASS --key-pass env:ATLAS_APK_PASS --out $Output $Aligned
if ($LASTEXITCODE -ne 0) { throw 'APK signing failed.' }
& (Join-Path $BuildTools 'apksigner.bat') verify --verbose --print-certs $Output
if ($LASTEXITCODE -ne 0) { throw 'APK signature verification failed.' }
Copy-Item $Output (Join-Path $PSScriptRoot 'Atlas-Simulation-Studio.apk') -Force
Remove-Item Env:ATLAS_APK_PASS
Get-Item (Join-Path $PSScriptRoot 'Atlas-Simulation-Studio.apk') | Select-Object FullName, Length
