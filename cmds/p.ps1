
if ((Get-Location).Path -eq $env:3DOTS) {

    cat inputs/input.py.txt | python ./src/main.py

} else {    
    Write-Host "If you know try again."
}
