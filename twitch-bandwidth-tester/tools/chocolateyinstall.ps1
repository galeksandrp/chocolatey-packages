﻿Install-ChocolateyZipPackage "$env:chocolateyPackageName" 'https://r-1.ch/TwitchTest.zip' "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)" -Checksum '2d105b4cb20f6acc3cf3bf5134dc24eddeb9f99e114ec1c8bfe714182b56e435' -ChecksumType 'sha256'
