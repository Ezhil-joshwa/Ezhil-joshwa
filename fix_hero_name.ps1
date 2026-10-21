Add-Type -AssemblyName System.Drawing

$heroPath = "C:\Users\ezhil\OneDrive\Documents\GitHub\Ezhil-joshwa\assets\section-1-hero.png"
$bmp = [System.Drawing.Bitmap]::FromFile($heroPath)

# Offset in section-1-hero: x = 40 + [name-test x], y = 60 + [name-test y]
# In name-test:
# 'I' stem is at x = 99 to 106.
# The wings to remove:
# Top wing left: x = 94 to 99, y = 0 to 6
# Top wing right: x = 107 to 111, y = 0 to 6
# Bottom wing left: x = 94 to 99, y = 24 to 31
# Bottom wing right: x = 107 to 111, y = 24 to 31

$bgCol = $bmp.GetPixel(40 + 94, 60 + 15) # Dark background color from nearby

# In section-1-hero coords:
$offsetX = 40
$offsetY = 60

# Clean top wings
for ($y = 0; $y -le 6; $y++) {
    for ($x = 94; $x -lt 100; $x++) {
        $bmp.SetPixel($offsetX + $x, $offsetY + $y, $bgCol)
    }
    for ($x = 106; $x -le 112; $x++) {
        $bmp.SetPixel($offsetX + $x, $offsetY + $y, $bgCol)
    }
}

# Clean bottom wings
for ($y = 24; $y -le 31; $y++) {
    for ($x = 94; $x -lt 100; $x++) {
        $bmp.SetPixel($offsetX + $x, $offsetY + $y, $bgCol)
    }
    for ($x = 106; $x -le 112; $x++) {
        $bmp.SetPixel($offsetX + $x, $offsetY + $y, $bgCol)
    }
}

$fixedFile = "C:\Users\ezhil\OneDrive\Documents\GitHub\Ezhil-joshwa\assets\section-1-hero.png"
$tmpFile = "C:\Users\ezhil\OneDrive\Documents\GitHub\Ezhil-joshwa\assets\section-1-hero-fixed.png"
$bmp.Save($tmpFile, [System.Drawing.Imaging.ImageFormat]::Png)
$bmp.Dispose()

Remove-Item $heroPath
Rename-Item $tmpFile $heroPath

Write-Host "Fixed hero banner saved successfully!"
