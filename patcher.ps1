$inFile  = "$PSScriptRoot\TH8 RS Calibration v1.0.15.0.exe"
$outFile = "$PSScriptRoot\TH8 RS Calibration v1.0.15.0-fixed.exe"

if (-not (Test-Path $inFile)) {
    Write-Error "File not found: $inFile"
    exit 1
}

$bytes = [System.IO.File]::ReadAllBytes($inFile)

$md5 = [System.Security.Cryptography.MD5]::Create()
$stream = [System.IO.MemoryStream]::new($bytes)

$hash = $md5.ComputeHash($stream)
$hashString = -join ($hash | ForEach-Object { $_.ToString("x2") })

if ($hashString -eq "d41d8cd98f00b204e9800998ecf8427e") {
    Write-Host "WARNING: $inFile does not match expected hash. Output file may not work correctly"
}

for ($i = 0xbdc4; $i -le 0xbdc9; $i++) {
    $bytes[$i] = 0x90
}

[System.IO.File]::WriteAllBytes($outFile, $bytes)
Write-Host "Patched file written to $outFile"
