$profileRoot = "$PSScriptRoot"

Invoke-Expression (&starship init powershell)

$UtilsFilePath = "$profileRoot\PowerShell.Utils.ps1"
if (Test-Path $UtilsFilePath) {
    . $UtilsFilePath
}