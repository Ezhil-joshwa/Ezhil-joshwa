Add-Type -AssemblyName System.Drawing

$srcPath = "C:\Users\ezhil\.gemini\antigravity-ide\brain\5d0154a5-03be-4965-8f88-95bc457aad0d\.user_uploaded\media_1792574846965.jpg"
$outDir = "C:\Users\ezhil\OneDrive\Documents\GitHub\Ezhil-joshwa\assets"
$src = [System.Drawing.Image]::FromFile($srcPath)

function Crop-Image($name, $x, $y, $w, $h) {
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
    Write-Host "Saved $destFile ($w x $h)"
}

# The mathematically exact card slices:
Crop-Image "01-hero-banner.png" 0 0 682 228
Crop-Image "02-about-and-stats.png" 0 230 682 242
Crop-Image "03-tech-stack.png" 0 474 682 152
Crop-Image "04-featured-projects.png" 0 628 682 162
Crop-Image "05-working-and-activity.png" 0 792 682 156
Crop-Image "06-footer-quote.png" 0 950 682 62

$src.Dispose()

# Now fix the letter 'l' in 01-hero-banner.png
$heroPath = Join-Path $outDir "01-hero-banner.png"
$bmp = [System.Drawing.Bitmap]::FromFile($heroPath)
$offsetX = 40
$offsetY = 60
$bgCol = $bmp.GetPixel($offsetX + 94, $offsetY + 15)

for ($y = 0; $y -le 6; $y++) {
    for ($x = 94; $x -lt 100; $x++) {
        $bmp.SetPixel($offsetX + $x, $offsetY + $y, $bgCol)
    }
    for ($x = 106; $x -le 112; $x++) {
        $bmp.SetPixel($offsetX + $x, $offsetY + $y, $bgCol)
    }
}
for ($y = 24; $y -le 31; $y++) {
    for ($x = 94; $x -lt 100; $x++) {
        $bmp.SetPixel($offsetX + $x, $offsetY + $y, $bgCol)
    }
    for ($x = 106; $x -le 112; $x++) {
        $bmp.SetPixel($offsetX + $x, $offsetY + $y, $bgCol)
    }
}
$tmp = Join-Path $outDir "01-hero-banner-fixed.png"
$bmp.Save($tmp, [System.Drawing.Imaging.ImageFormat]::Png)
$bmp.Dispose()
Remove-Item $heroPath
Rename-Item $tmp $heroPath

Write-Host "Perfect mathematically aligned slices saved!"
