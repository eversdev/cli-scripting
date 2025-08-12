Write-Host "your username is $env:USERNAME"

Write-Host "Todays date is $(Get-Date -Format 'dd:MM:yyyy')"

Write-Host "The time is $(Get-Date -Format 'hh:mm:ss')"

Write-Host "Your current directory is $(Get-Location)" 

Write-Host "Number of current files in this directory is $((Get-ChildItem -File).Count)"

Write-Host "The biggest file in this directory is $((Get-ChildItem -File | Sort-Object -Property Length -Descending | Select-Object -First 1).Name)"