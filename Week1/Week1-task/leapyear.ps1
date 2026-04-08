param(
    [int]$year
)

try {
    $year = Read-Host "Enter the year"

    if ($year -le 0) {
        Write-Host "Invalid Year"
    }

    if (($year % 4 -eq 0 -and $year % 100 -ne 0) -or ($year % 400 -eq 0)) {
        Write-Host "$year is leap year"
    }
    else {
        Write-Host "$year is not leap year"
    }
}
catch {
    Write-Host "Error "
    Write-Host $_
}
finally {
    Write-Host "Execution completed."
}