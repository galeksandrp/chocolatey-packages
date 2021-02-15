$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  url                    = 'https://www.ftdichip.com/Drivers/CDM/CDM21228_Setup.zip'
  checksum               = '764A3C033FE4F29488A80EA92E7A0D284B8FC8ECE77BEF0F17D203BF8A6FEDFD'
  checksumType           = 'sha256'
  UnzipLocation          = "$env:TMP"
}
Install-ChocolateyZipPackage @packageArgs

$packageArgs = @{
  FileFullPath           = "$env:TMP\CDM21228_Setup.exe"
  Destination            = "$env:TMP\$env:chocolateyPackageName"
}
Get-ChocolateyUnzip @packageArgs

$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'exe'
  SilentArgs             = '/S /SE'
  File                   = "$env:TMP\$env:chocolateyPackageName\dpinst-x86.exe"
  File64                 = "$env:TMP\$env:chocolateyPackageName\dpinst-amd64.exe"
  ValidExitCodes         = @(0,512)
}
Install-ChocolateyInstallPackage @packageArgs
