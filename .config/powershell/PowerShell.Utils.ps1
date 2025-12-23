# https://learn.microsoft.com/en-us/cli/azure/install-azure-cli-windows?view=azure-cli-latest&pivots=winget#enable-tab-completion-in-powershell
# copy script from description, they don't provide cli command to generate it
. "$PSScriptRoot/PowerShell.Utils.AzureCli.ps1"


#  kubectl completion powershell > ./PowerShell.Utils.Kubectl.ps1
. "$PSScriptRoot/PowerShell.Utils.Kubectl.ps1"


# bat --completion ps1 > ./PowerShell.Utils.Bat.ps1
. "$PSScriptRoot/PowerShell.Utils.Bat.ps1"

# ( & starship init powershell --print-full-init ) > ./PowerShell.Utils.Starship.ps1
# replace direct path to starship executable with just starship

. "$PSScriptRoot/PowerShell.Utils.Starship.ps1"

# zoxide init powershell --cmd cd > "./PowerShell.Utils.Zoxide.ps1"
. "$PSScriptRoot/PowerShell.Utils.Zoxide.ps1"
