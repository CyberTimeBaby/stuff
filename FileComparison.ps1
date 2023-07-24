#File comparison script by CyberTimeBaby
Write-Host "This is a script to compare two files by CyberTimeBaby

do {  
       Do{
    $var1 = Read-Host 'File Path for Baseline' 
}While (($var1 -eq $null) -or ($var1 -eq "")) #Checks for null or empty input
    if (-not (Test-Path $var1)) {             #Validates file path
        Write-Host "Not Found, Try Again" -ForegroundColor Yellow    

        } 
} until (Test-Path $var1) #Loop continues until valid
$var2 = Import-Csv $var1 #$var1 will be your baseline 
do {       
       Do{
    $var3 = Read-Host 'File Path for Recent Query'
}While (($var1 -eq $null) -or ($var3 -eq ""))
    if (-not (Test-Path $var1)) {
        Write-Host "Not Found, Try Again" -ForegroundColor Yellow

        } 
} until (Test-Path $var3) 
$var4 = Import-Csv $var3 #var3 will be the recent query you want to compare against your baseline
Compare-Object $var2 $var4 #This command compares the two files
