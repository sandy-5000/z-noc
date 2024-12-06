
if ((Get-Location).Path -eq $env:3DOTS) {

    kotlinc ./src/main.kt
    cat ./inputs/input.kt.txt | kotlin MainKt
    rm MainKt.class
    rm -Recurse -Force ./META-INF

} else {    
    Write-Host "If you know try again."
}
