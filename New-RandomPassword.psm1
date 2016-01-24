Function New-RandomPassword {
	Param(
		[Parameter()]
		[ValidateRange(8,20)]
		[int] $Length = 8
	)
	
	$set = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789".ToCharArray()
	
	do {
		$res = ""
	
		while ($res.Length -lt $Length) {
			$res += $set | Get-Random
		}
	# 8-20 chars, one capital, one lower and a number
	} until ($res -cmatch "^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,20}$")
	
	Write-Verbose ("Password: {0}" -f $res)
	
	return $res
}

Export-ModuleMember New-RandomPassword
