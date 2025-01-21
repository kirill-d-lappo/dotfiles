# rsync --archive --progress --exclude ":- /home/klappo/.config/nvim/.gitignore" "/home/klappo/.config/nvim/" "/home/klappo/workspace/remote/gists/config/_config/nvim/"

# Install from repo to config folder


param (
	[switch]
	$Install
)

$configFolderPath = "$env:USERPROFILE/AppData/Local/nvim"
$repoFolderPath = "$env:USERPROFILE/w/remote/gists/config/_config/nvim"

if ($Install)
{
	Copy-Item -Recurse -Force -Path "$repoFolderPath/*" -Destination "$configFolderPath"
} else
{
	Copy-Item -Recurse -Force -Path "$configFolderPath/*" -Destination "$repoFolderPath"
}

