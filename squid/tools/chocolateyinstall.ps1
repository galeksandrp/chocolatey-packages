﻿Install-ChocolateyZipPackage "$env:chocolateyPackageName" 'http://squid.acmeconsulting.it/download/squid-2.5.STABLE14-NT-bin-SSL.zip' "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)" -Checksum 'fec425f495599a19ebf187d24b4dcbb033d47030f4724e52c8c51a92d13678cd' -ChecksumType 'sha256'
