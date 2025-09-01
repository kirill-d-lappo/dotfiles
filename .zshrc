# Use powerline
USE_POWERLINE="false"

# Has weird character width
# Example:
#    is not a diamond
HAS_WIDECHARS="false"

# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi

# Use manjaro zsh prompt
# if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  # source /usr/share/zsh/manjaro-zsh-prompt
# fi

if [[ -f "$HOME/.dotfiles_profile" ]]; then
	source "$HOME/.dotfiles_profile"
fi

if [[ -f "$HOME/.local_profile" ]]; then
	source "$HOME/.local_profile"
fi

# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

path=('/home/klappo/.juliaup/bin' $path)
export PATH

# <<< juliaup initialize <<<
