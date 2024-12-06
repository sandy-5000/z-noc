
$scriptDirectory = $PSScriptRoot
$currentDirectory = Get-Location

if ($currentDirectory.Path -ne $scriptDirectory) {

    Write-Error "This script can only be executed in the directory where it is located."
    Exit 1

}

[System.Environment]::SetEnvironmentVariable("3DOTS", $currentDirectory.Path, [System.EnvironmentVariableTarget]::User)
$env:3DOTS = $currentDirectory.Path

if ($env:3DOTS) {
    
    $cmdsPath = Join-Path -Path $env:3DOTS -ChildPath "cmds"
    $currentPath = $env:PATH

    if ($currentPath -notlike "*$cmdsPath*") {
        $env:PATH = "$env:PATH;$cmdsPath"
        [System.Environment]::SetEnvironmentVariable("PATH", $env:PATH, [System.EnvironmentVariableTarget]::User)
        Write-Host "Appended $cmdsPath to PATH."
    } else {
        Write-Host "$cmdsPath is already in the PATH."
    }

} else {
    
    Write-Error "The 3DOTS environment variable is not set."
    Exit 1

}
