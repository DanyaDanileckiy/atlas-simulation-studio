$ErrorActionPreference = 'Stop'
function Get-RemoteFileParallel([string]$Url,[string]$Destination,[long]$Length,[string]$Tag,[int]$Parts=8){
  $dir=Join-Path (Split-Path -Parent $Destination) ("chunks-"+$Tag)
  New-Item -ItemType Directory -Force -Path $dir | Out-Null
  $chunk=[long][Math]::Ceiling($Length/$Parts);$jobs=@()
  for($i=0;$i -lt $Parts;$i++){
    $start=[long]$i*$chunk;$end=[Math]::Min($Length-1,$start+$chunk-1);$out=Join-Path $dir ("part-{0:D2}" -f $i);$err=Join-Path $dir ("part-{0:D2}.err" -f $i)
    if($start -ge $Length){continue}
    $args=@('-L','--fail','--retry','3','--silent','--show-error','--range',"$start-$end",$Url,'--output',$out)
    $jobs+=Start-Process -FilePath 'curl.exe' -ArgumentList $args -WindowStyle Hidden -PassThru -RedirectStandardError $err
  }
  $jobs|Wait-Process
  $stream=[IO.File]::Open($Destination,[IO.FileMode]::Create,[IO.FileAccess]::Write)
  try{for($i=0;$i -lt $Parts;$i++){$part=Join-Path $dir ("part-{0:D2}" -f $i);if(!(Test-Path $part)){throw "Missing download segment $i for $Tag"};$actual=(Get-Item $part).Length;$expected=[Math]::Min($chunk,$Length-[long]$i*$chunk);if($actual -ne $expected){throw "Bad segment $i size $actual (expected $expected)"};$fs=[IO.File]::OpenRead($part);try{$fs.CopyTo($stream)}finally{$fs.Dispose()}}}finally{$stream.Dispose()}
  if((Get-Item $Destination).Length -ne $Length){throw "Final size mismatch for $Tag"}
  if($Tag -eq 'android-cli'){$sha=(Get-FileHash $Destination -Algorithm SHA256).Hash.ToLower();if($sha -ne '90ae805d20434428bffcb699c290860f19bb5f66a67e6b330067e3de801fb04a'){throw "Android command-line tools checksum mismatch: $sha"}}
  "Downloaded $Tag ($([math]::Round($Length/1MB)) MB, $Parts ranged segments)."
}
Get-RemoteFileParallel 'https://dl.google.com/android/repository/commandlinetools-win-15859902_latest.zip' 'K:\Гонка населения\installer-output\android-cli-full.zip' 155655386 'android-cli' 8
Get-RemoteFileParallel 'https://api.adoptium.net/v3/binary/latest/17/ga/windows/x64/jdk/hotspot/normal/eclipse' 'K:\Гонка населения\installer-output\jdk17-full.zip' 191102880 'jdk17' 8
