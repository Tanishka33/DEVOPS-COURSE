param(
    [string]$module
)

try{
    if (-not $module) {
        $module = Read-Host "Enter module name"
    }

    Write-Host "Searching module '$module' ..."

    Write-Host "Finding module : $ModuleName"
    Find-Module -Name $Module

    Write-Host "Installing module ..."
    Install-Module -Name $module -Scope CurrentUser -Force

    Write-Host "Importing module ..."
    Import-Module -Name $module

    Write-Host "Commands in module: "
    Get-Command -Module $module | Format-Table Name
}
catch{
    Write-Host "error occured."
    Write-Host $_
}
finally {
    write-host "Process complted"
}
