
if ((Get-Location).Path -eq $env:3DOTS) {

    g++ ./src/main.cpp
    cat ./inputs/input.cpp.txt | ./a.exe
    rm ./a.exe

} else {    
    Write-Host "If you know try again."
}
