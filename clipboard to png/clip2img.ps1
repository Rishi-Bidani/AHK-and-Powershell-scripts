get-clipboard -format image
$img = get-clipboard -format image

# get save path - open file dialog
$savePath = New-Object System.Windows.Forms.SaveFileDialog
$savePath.Filter = 'PNG (*.png)|*.png'
# $savePath.ShowDialog() | Out-Null

if ($savePath.ShowDialog() -eq [System.Windows.Forms.DialogResult]::OK) {
    # $savePath.FileName
    $img.save($savePath.FileName)
}