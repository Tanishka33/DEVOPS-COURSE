param(
    [string]$policy
)

try {
    Write-Host "Current execution policy:"
    Get-ExecutionPolicy -List | Out-Host

    # If no parameter given, take input from user
    if (-not $policy) {
        $policy = Read-Host "Enter execution policy"
    }

    Write-Host "Setting execution policy to $policy"

    Set-ExecutionPolicy -ExecutionPolicy $policy -Scope CurrentUser -Force

    Write-Host "Execution policy set successfully"
}
catch {
    Write-Host "Error occurred"
    Write-Error $_
}
finally {
    Write-Host "Done"
}