
if ($IsLinux) {
    . "$PSScriptRoot/PowerShell.UserFunctions.Linux.ps1"
}

if ($IsWindows) {
    . "$PSScriptRoot/PowerShell.UserFunctions.Windows.ps1"
}

#region Common functions

function Show-Jwt($jwt) {
    $jwt | jq -R 'split(".") | .[0],.[1] | @base64d | fromjson'
}

function clb() {
    git branch --merged | where-object { !($_ -match "(^\*|master|main|dev|release.*)") } | foreach-object { & git branch -d $_.Trim() }
}

function q() {
    exit
}

function qqq() {
    exit
}

function load(
    [string]
    $Path,

    [Alias("verify")]
    [switch]
    $ShouldVerifyPath = $false
) {
    if (-Not($ShouldVerifyPath) -or (Test-Path $Path)) {
        . $Path
    }
}

#endregion Common functions
