

tdir = "$HOME/.dotfiles/"
mkdir -p "$tdir"

echo ".dotfiles" >> "$HOME/.gitignore"

git clone --bare https://github.com/kirill-d-lappo/dotfiles.git $tdir
alias config='/usr/bin/git --git-dir=$tdir --work-tree=$HOME'

config config --local status.showUntrackedFiles no

config checkout -f

echo "Restart you session"
# echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bashrc
