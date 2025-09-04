# run-glaryutilities.ps1
$exeUrl = "https://github.com/clickinformaticavillaramallo/glarysutilities/releases/download/1/GlaryUtilities.exe"
$tmpExe = "$env:TEMP\GlaryUtilities.exe"

Write-Host "[*] Descargando Glary Utilities..." -ForegroundColor Yellow
Invoke-WebRequest -Uri $exeUrl -OutFile $tmpExe -UseBasicParsing

Unblock-File -Path $tmpExe
Start-Process $tmpExe -Wait