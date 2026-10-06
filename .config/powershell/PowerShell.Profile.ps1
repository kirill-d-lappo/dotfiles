# Entrypoint for PowerShell profile settings
# It is loaded in corresponding $PROFILE file

[Environment]::SetEnvironmentVariable('POWERSHELL_UPDATECHECK', 'Off', 'User')

. "$PSScriptRoot/PowerShell.UserFunctions.ps1"

. "$PSScriptRoot/PowerShell.AliasRemoval.ps1"

if ($IsWindows) {
    . "$PSScriptRoot/PowerShell.CoreUtils.ps1"
}

. "$PSScriptRoot/PowerShell.Utils.ps1"

# --- PSReadLine ---
Set-PSReadLineOption -PredictionSource HistoryAndPlugin
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -HistorySearchCursorMovesToEnd
Set-PSReadLineOption -MaximumHistoryCount 10000

Set-PSReadLineKeyHandler -Key Tab       -Function Complete
Set-PSReadLineKeyHandler -Key UpArrow   -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward
Set-PSReadLineKeyHandler -Key Ctrl+d    -Function DeleteCharOrExit

