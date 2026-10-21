Add-Type -AssemblyName System.Drawing

$srcPath = "C:\Users\ezhil\OneDrive\Documents\GitHub\Ezhil-joshwa\assets\section-1-hero.png"
$src = [System.Drawing.Image]::FromFile($srcPath)
$rect = New-Object System.Drawing.Rectangle(40, 60, 290, 50)
$bmp = New-Object System.Drawing.Bitmap(290, 50)
$g = [System.Drawing.Graphics]::FromImage($bmp)
$g.DrawImage($src, 0, 0, $rect, [System.Drawing.GraphicsUnit]::Pixel)
$g.Dispose()
$bmp.Save("C:\Users\ezhil\OneDrive\Documents\GitHub\Ezhil-joshwa\assets\name-test.png")
$bmp.Dispose()
$src.Dispose()
Write-Host "Done"
