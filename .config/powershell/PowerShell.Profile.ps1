# Entrypoint for PowerShell profile settings
# It is loaded in corresponding $PROFILE file

[Environment]::SetEnvironmentVariable('POWERSHELL_UPDATECHECK', 'Off', 'User')

. "$PSScriptRoot/PowerShell.UserFunctions.ps1"

Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
# if ($host.Name -eq 'ConsoleHost') {
#     Import-Module PSReadLine -ErrorAction SilentlyContinue

#     if (Get-Module -Name PSReadLine) {
#         Set-PSReadLineOption -EditMode Windows
#         Set-PSReadLineOption -PredictionViewStyle ListView
#         Set-PSReadLineOption -PredictionSource HistoryAndPlugin
#     }
# }

# starship support for transient prompt
function Invoke-Starship-TransientFunction {
    & starship module character
}

load "$PSScriptRoot/PowerShell.AliasRemoval.ps1"  --verify

if ($IsWindows) {
    load "$PSScriptRoot/PowerShell.CoreUtils.ps1" --verify
}

load "$PSScriptRoot/PowerShell.Utils.ps1" --verify

Enable-TransientPrompt
