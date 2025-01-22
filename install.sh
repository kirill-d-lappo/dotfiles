#!/bin/bash

tdir="$HOME/workspace/learn/git/dotfiles-git"
wtree="$HOME/workspace/learn/git/dotfiles-wt"

# fixme remove delete
rm -rf $tdir
rm -rf $wtree

mkdir -p $wtree

echo "Installing dotfiles...."

# echo ".dotfiles" >>"$HOME/.gitignore"

git clone --bare -b "feature/experiments" "https://github.com/kirill-d-lappo/dotfiles.git" "$tdir"

# alias config='/usr/bin/git --git-dir="$tdir" --work-tree=$wtree'

git --git-dir="$tdir" --work-tree="$wtree" config --local status.showUntrackedFiles no
git --git-dir="$tdir" --work-tree="$wtree" checkout -f

git --git-dir="$tdir" --work-tree="$wtree" config --local core.sparseCheckout true
git --git-dir="$tdir" --work-tree="$wtree" sparse-checkout set "!install.sh"
git --git-dir="$tdir" --work-tree="$wtree" sparse-checkout set "!README.md"

exit

echo "Configuring git ...."

git config --global alias.amend "commit --amend --no-edit"
git config --global alias.lol "log --pretty=format:'%x09%x09 %Cred%h%Creset -%Creset %<(60,trunc)%s%Cgreen%<(13,trunc)(%cr) %C(bold blue)%<(15,trunc)<%an>%Creset %C(yellow)%d%Creset' --abbrev-commit --graph"

git config --global core.editor "nvim -n --clean"

git config --global core.pager "delta"
git config --global interactive.diffFilter "delta --color-only"

git config --global delta.syntax-theme "Dracula"
git config --global delta.line-numbers "true"
git config --global delta.side-by-side "false"
git config --global delta.navigate "true"
git config --global delta.light "false"

git config --global merge.conflictstyle zdiff3
git config --global diff.colorMoved default

git config --global fetch.prune true
git config --global fetch.pruneTags true

git config --global push.autoSetupRemote true
git config --global init.defaultBranch main

echo "Restart you session"

# alias config="/usr/bin/git --git-dir='$HOME/.dotfiles/' --work-tree='$HOME'"
