# New-RandomPassword

Generate random passwords in PowerShell.

Passwords will always contain lower- and uppercase letters and a number.

The length can be specified, by default it's 12 characters.

With the -Verbose parameter it will also output the password via Write-Verbose, which is useful if you use this cmdlet as a parameter to another cmdlet ("-NewPassword (New-RandomPassword -Verbose)").
