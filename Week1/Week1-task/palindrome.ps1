param(
    [string]$string
)

try {

    $string = Read-Host "Enter the string "

    if($string.Length -eq 0){
        Write-Host "string is empty"
    }

    $left = 0
    $right = $string.Length - 1
    $isPalindrome = $true

    while ($left -lt $right){
        if ($string[$left] -ne $string[$right]){
            $isPalindrome = $false
            break
        }
        $left++
        $right--
    }

    if($isPalindrome) {
        Write-Host "String is Palindrome"
    }
    else {
        Write-Host "String is not a palindrome"
    }
}
catch {
    Write-Host "Error"
    Write-Host $_
}
finally {
    Write-Host "Execution completed."
}
