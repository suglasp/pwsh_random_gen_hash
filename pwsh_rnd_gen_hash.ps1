
#
# example how to easly generate random paswoord or hash
#

# https://docs.microsoft.com/en-us/dotnet/api/system.web.security.membership.generatepassword?view=netframework-4.8
# public static string GeneratePassword (int length, int numberOfNonAlphanumericCharacters);

[int]$iHashLength = 8
[int]$iComplexity = 1

$Assembly = Add-Type -AssemblyName System.Web
[System.Web.Security.Membership]::GeneratePassword($iHashLength, $iComplexity)

$null = Read-Host -Prompt "Press a key..."

