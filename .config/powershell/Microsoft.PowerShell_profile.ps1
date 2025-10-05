$profileRoot = "$PSScriptRoot"

function dev() {
    Set-Location "~/workspace/vopty"
}

$UtilsFilePath = "$profileRoot\PowerShell.Utils.ps1"
if (Test-Path $UtilsFilePath) {
    . $UtilsFilePath
}

$AutocompletionFilePath = "$profileRoot\PowerShell.AutoCompletion.ps1"
if (Test-Path $AutocompletionFilePath) {
    . $AutocompletionFilePath
}

$AliasRemovalFilePath = "$profileRoot\PowerShell.CoreUtils.AliasRemoval.ps1"
if (Test-Path $AliasRemovalFilePath) {
    . $AliasRemovalFilePath
}

#Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
if ($host.Name -eq 'ConsoleHost') {
    Import-Module PSReadLine

    Set-PSReadLineOption -EditMode Windows
    Set-PSReadLineOption -PredictionViewStyle ListView
    Set-PSReadLineOption -PredictionSource HistoryAndPlugin
}


Invoke-Expression (&starship init powershell)


