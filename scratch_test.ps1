Add-Type -AssemblyName System.Drawing

$srcPath = "C:\Users\ezhil\.gemini\antigravity-ide\brain\5d0154a5-03be-4965-8f88-95bc457aad0d\.user_uploaded\media_1792574846965.jpg"
$outDir = "C:\Users\ezhil\OneDrive\Documents\GitHub\Ezhil-joshwa\assets"

if (!(Test-Path $outDir)) {
    New-Item -ItemType Directory -Path $outDir | Out-Null
}

$img = [System.Drawing.Image]::FromFile($srcPath)
Write-Host "Source image loaded: $($img.Width) x $($img.Height)"
$img.Dispose()
