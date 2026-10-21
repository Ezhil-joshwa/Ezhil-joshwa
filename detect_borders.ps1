Add-Type -AssemblyName System.Drawing

$srcPath = "C:\Users\ezhil\.gemini\antigravity-ide\brain\5d0154a5-03be-4965-8f88-95bc457aad0d\.user_uploaded\media_1792574846965.jpg"
$bmp = [System.Drawing.Bitmap]::FromFile($srcPath)

for ($y = 0; $y -lt 1024; $y += 2) {
    # Check pixels at x = 20, 100, 340, 500, 660
    $c1 = $bmp.GetPixel(20, $y)
    $c2 = $bmp.GetPixel(340, $y)
    $c3 = $bmp.GetPixel(660, $y)
    # Brightness
    $b1 = ($c1.R + $c1.G + $c1.B) / 3
    $b2 = ($c2.R + $c2.G + $c2.B) / 3
    $b3 = ($c3.R + $c3.G + $c3.B) / 3
    if ($b1 -gt 40 -or $b2 -gt 40 -or $b3 -gt 40) {
        # Check if line looks like a horizontal card boundary
        # A card top or bottom border usually has cyan/blue color (B > 60) across many x
        $cyanCount = 0
        for ($x = 25; $x -lt 655; $x += 10) {
            $px = $bmp.GetPixel($x, $y)
            if ($px.B -gt 50 -and $px.B -gt $px.R) { $cyanCount++ }
        }
        if ($cyanCount -gt 40) {
            Write-Host ("Y = {0:D4}: Cyan Border Detected (count={1})" -f $y, $cyanCount)
        }
    }
}
$bmp.Dispose()
