Add-Type -AssemblyName System.Drawing

$srcPath = "C:\Users\ezhil\.gemini\antigravity-ide\brain\5d0154a5-03be-4965-8f88-95bc457aad0d\.user_uploaded\media_1792574846965.jpg"
$outDir = "C:\Users\ezhil\OneDrive\Documents\GitHub\Ezhil-joshwa\assets"

if (!(Test-Path $outDir)) {
    New-Item -ItemType Directory -Path $outDir | Out-Null
}

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

# 1. Developer pixel-art illustration in top-right
Crop-Image "hero-art.png" 350 0 332 225

# 2. About Me illustration (boy at laptop)
Crop-Image "about-me-art.png" 270 240 145 190

# 3. Currently Working On illustration (boy studying)
Crop-Image "learning-art.png" 200 770 140 150

# 4. Starry night mountain illustration ("DISCIPLINE CREATES FREEDOM")
Crop-Image "mountain-art.png" 550 780 132 140

# 5. Full sections for reference
Crop-Image "section-1-hero.png" 0 0 682 225
Crop-Image "section-2-about-stats.png" 0 225 682 230
Crop-Image "section-3-tech-stack.png" 0 455 682 155
Crop-Image "section-4-featured-projects.png" 0 610 682 150
Crop-Image "section-5-working-activity.png" 0 760 682 170
Crop-Image "section-6-footer.png" 0 930 682 85

$src.Dispose()
