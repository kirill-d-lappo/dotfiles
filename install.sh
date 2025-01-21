#!/bin/bash

tdir="$HOME/.dotfiles/"
wtree="$HOME"

echo ".dotfiles" >> "$HOME/.gitignore"

git clone --bare "https://github.com/kirill-d-lappo/dotfiles.git" "$tdir"

alias config='/usr/bin/git --git-dir="$tdir" --work-tree=$wtree'

git --git-dir="$tdir" --work-tree="$wtree" config --local status.showUntrackedFiles no
git --git-dir="$tdir" --work-tree="$wtree" checkout -f

echo "Restart you session"

