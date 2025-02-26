Set-Location (Split-Path $MyInvocation.MyCommand.Path -Parent)

try {
    Invoke-WebRequest `
        -Uri 'https://github.com/v2fly/domain-list-community/releases/latest/download/dlc.dat' `
        -OutFile 'geosite.dat'
}
catch {
    exit 1
}

mv -Force 'geosite.dat' '..\release\geosite.dat'
exit 0