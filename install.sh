


alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
echo ".dotfiles" >> .gitignore

git clone --bare git@github.com:kirill-d-lappo/dotfiles.git $HOME/.dotfiles/

config config --local status.showUntrackedFiles no

echo "Restart you session"
# echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bashrc
