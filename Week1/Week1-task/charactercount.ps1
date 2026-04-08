param(
    [string]$string
)

try {
    $string = Read-Host "Enter string"

    if ($string.Length -eq 0) {
        Write-Host "Empty string no allowed"
    }

    $map = @{}

    foreach ($char in $string.ToCharArray()) {
        if ($map.ContainsKey($char)){
            $map[$char]++
        }
        else {
            $map[$char] = 1
        }
    }

    Write-Host "Chracter count : "
    $map
}
catch {
    Write-Host "Error"
    Write-Host $_
}
finally {
    Write-Host "Execution completed."
}