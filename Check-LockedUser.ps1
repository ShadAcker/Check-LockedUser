#This is my cmdlet that will do a quick check to see if a user account is locked...
# very useful when troubleshooting :)

[CmdletBinding()]

param(
[Parameter(Mandatory=$true, position=0)]
[string] $UserName,
[Parameter(Mandatory=$true, position=1)]
[string] $domain
    
)

Write-output "`nChecking the status for user `"$($UserName)`"... in the $($domain) domain: `n" 

$foo = (get-aduser $UserName -properties lockedout -server $domain)

if ($foo.LockedOut -eq $false) { 
    
    write-host -ForegroundColor Green "Account is OK"

}Else {
    Write-host -ForegroundColor Magenta "Account is locked out"

    }
