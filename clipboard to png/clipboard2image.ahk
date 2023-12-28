#Requires AutoHotkey v2.0

; get-clipboard -format image
; $img = get-clipboard -format image

; # get save path - open file dialog
; $savePath = New-Object System.Windows.Forms.SaveFileDialog
; $savePath.Filter = 'PNG (*.png)|*.png'
; # $savePath.ShowDialog() | Out-Null

; if ($savePath.ShowDialog() -eq [System.Windows.Forms.DialogResult]::OK) {
;     # $savePath.FileName
;     $img.save($savePath.FileName)
; }

command := "get-clipboard -format image; $img = get-clipboard -format image; $savePath = New-Object System.Windows.Forms.SaveFileDialog; $savePath.Filter = 'PNG (*.png)|*.png'; if ($savePath.ShowDialog() -eq [System.Windows.Forms.DialogResult]::OK) {$img.save($savePath.FileName)}"

^F1:: {
    ; run powershell script
    Run("powershell.exe -WindowStyle hidden -ExecutionPolicy Bypass -Command " command)
}