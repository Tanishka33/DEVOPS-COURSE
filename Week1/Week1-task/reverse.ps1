param(
    [string]$string
)

try{
    $string = Read-Host "Enter the string "

    if($string.Length -eq 0){
        Write-Host "string is empty"
    }
    $reversed = ""

    for($i = $string.Length - 1; $i -ge 0; $i--){
        $reversed += $string[$i]
    }

    Write-Host "Reversed string : $reversed"
}
catch {
    Write-Host "Error occured"
    Write-Host $_
}
finally {
    Write-Host "Execution completed"
}