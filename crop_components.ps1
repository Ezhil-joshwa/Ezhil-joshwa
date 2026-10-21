Add-Type -AssemblyName System.Drawing

$outDir = "C:\Users\ezhil\OneDrive\Documents\GitHub\Ezhil-joshwa\assets"

function Crop-From($srcFile, $name, $x, $y, $w, $h) {
    $src = [System.Drawing.Image]::FromFile($srcFile)
    $rect = New-Object System.Drawing.Rectangle($x, $y, $w, $h)
    $bmp = New-Object System.Drawing.Bitmap($w, $h)
    $g = [System.Drawing.Graphics]::FromImage($bmp)
    $g.InterpolationMode = [System.Drawing.Drawing2D.InterpolationMode]::HighQualityBicubic
    $g.SmoothingMode = [System.Drawing.Drawing2D.SmoothingMode]::HighQuality
    $g.PixelOffsetMode = [System.Drawing.Drawing2D.PixelOffsetMode]::HighQuality
    $destRect = New-Object System.Drawing.Rectangle(0, 0, $w, $h)
    $g.DrawImage($src, $destRect, $rect, [System.Drawing.GraphicsUnit]::Pixel)
    $g.Dispose()
    $destFile = Join-Path $outDir $name
    $bmp.Save($destFile, [System.Drawing.Imaging.ImageFormat]::Png)
    $bmp.Dispose()
    $src.Dispose()
    Write-Host "Saved $destFile ($w x $h)"
}

$projFile = Join-Path $outDir "04-featured-projects.png"
Crop-From $projFile "project-crm.png" 18 36 210 118
Crop-From $projFile "project-rental.png" 235 36 210 118
Crop-From $projFile "project-wordpress.png" 452 36 210 118

$footerFile = Join-Path $outDir "06-footer-quote.png"
Crop-From $footerFile "btn-youtube.png" 350 10 98 42
Crop-From $footerFile "btn-linkedin.png" 455 10 98 42
Crop-From $footerFile "btn-github.png" 560 10 104 42

Write-Host "Component crops done!"
