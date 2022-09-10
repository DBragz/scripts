<# .SYNOPSIS
	Curl Download
.DESCRIPTION
	Downloads the file using a curl command.
.NOTES
	Author: Daniel Ribeirinha-Braga - dmrbraga@gmail.com
.LINK
	https://github.com/DBragz/Scripts/blob/main/windows/powershell/curl.ps1
#>

if ((-not $args[0]) -or (-not $args[1])) {
  return Write-Host "Error: No URL or file name provided`nUsage: curl.ps1 <url> <file_name>"
}

curl -L $args[0] --output $args[1]