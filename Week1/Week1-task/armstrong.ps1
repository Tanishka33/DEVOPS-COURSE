param(
    [int]$number
)

try {
    if (-not $number) {
        $number = Read-Host "Enter a number"
    }
    if ($number -lt 0) {
        Write-Host "Negative number not allowed"
    }

    $temp = $number
    $digitCount = $number.ToString().Length
    $sum = 0

    while ($temp -gt 0) {
        $lastDigit = $temp % 10
        $sum += [math]::Pow($lastDigit, $digitCount)
        $temp = [math]::Floor($temp / 10)
    }

    if ($sum -eq $number) {
        Write-Host "$number is an Armstrong number"
    }
    else {
        Write-Host "$number is not an Armstrong Number"
    }
}
catch {
    Write-Host "Error"
    Write-Host $_
}
finally {
    Write-Host "Execution completed."
}