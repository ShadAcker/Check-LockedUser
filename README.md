# Check-LockedUser
This is my Powershell cmdlet that will quickly check if that account is locked.

Syntax:

.\Check-LockedUser.ps1 -UserName "bsmith" -domain "company.com"

both parameters are positional so you can also run it without the paramater labels

.\Check-LockedUser.ps1 "bsmith" "nyc"

will edit to unlock if it is... wrap in a gui and package for use by support teams (stay tuned)
