Add-Type -AssemblyName System.Drawing

$bmp = [System.Drawing.Bitmap]::FromFile("C:\Users\ezhil\OneDrive\Documents\GitHub\Ezhil-joshwa\assets\name-test.png")
for ($y = 0; $y -lt 35; $y++) {
    $line = ""
    for ($x = 65; $x -lt 110; $x++) {
        $c = $bmp.GetPixel($x, $y)
        if ($c.R -gt 100 -or $c.G -gt 100 -or $c.B -gt 150) {
            $line += "#"
        } else {
            $line += "."
        }
    }
    Write-Host ("{0:D2}: {1}" -f $y, $line)
}
$bmp.Dispose()
