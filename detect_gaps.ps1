Add-Type -AssemblyName System.Drawing

$srcPath = "C:\Users\ezhil\.gemini\antigravity-ide\brain\5d0154a5-03be-4965-8f88-95bc457aad0d\.user_uploaded\media_1792574846965.jpg"
$bmp = [System.Drawing.Bitmap]::FromFile($srcPath)

for ($y = 190; $y -lt 1020; $y++) {
    $sum = 0
    for ($x = 20; $x -lt 660; $x += 5) {
        $px = $bmp.GetPixel($x, $y)
        $sum += ($px.R + $px.G + $px.B)
    }
    $avg = $sum / (128 * 3)
    # Check if this row is very dark (background between cards)
    if ($avg -lt 14) {
        Write-Host ("Gap at Y = {0:D4} (avg = {1:F1})" -f $y, $avg)
    }
}
$bmp.Dispose()
