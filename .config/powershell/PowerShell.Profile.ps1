# Entrypoint for PowerShell profile settings
# It is loaded in corresponding $PROFILE file

[Environment]::SetEnvironmentVariable('POWERSHELL_UPDATECHECK', 'Off', 'User')

. "$PSScriptRoot/PowerShell.UserFunctions.ps1"

. "$PSScriptRoot/PowerShell.AliasRemoval.ps1"

if ($IsWindows) {
    . "$PSScriptRoot/PowerShell.CoreUtils.ps1"
}

. "$PSScriptRoot/PowerShell.Utils.ps1"

Set-PSReadlineKeyHandler -Key Tab -Function Complete
