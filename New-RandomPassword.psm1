Function New-RandomPassword {
    Param(
        [Parameter()]
        [int] $Length = 12
    )

    $set = (
        "abcdefghijklmnopqrstuvwxyz" +
        "ABCDEFGHIJKLMNOPQRSTUVWXYZ" +
        "0123456789"
    ).ToCharArray()

    # require one lower, one upper, one number
    $complexity = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).+$"

    do {
        $result = ($set | Get-Random -Count $length) -join ""
    } until ($result -cmatch $complexity)

    Write-Verbose ("Password: {0}" -f $res)

    return $result
}

Export-ModuleMember New-RandomPassword
