#!/bin/bash

# Inits dotfiles config in home directory

git --version 2>&1 >/dev/null
GIT_IS_AVAILABLE=$?

if [ $GIT_IS_AVAILABLE -ne 0 ]; then
    echo -e "Git is required"
    exit 1
fi

tdir="$HOME/.dotfiles.git"
wtree="$HOME"

git init --bare $tdir

git --git-dir="$tdir" --work-tree="$wtree" config --local status.showUntrackedFiles no

echo "alias config=\"/usr/bin/git --git-dir='\$HOME/.dotfiles.git' --work-tree='\$HOME'\" " >>$HOME/.bashrc

echo "dotfiles were initialized."
echo
echo "Type commands to add files to configuration:"
echo
echo "config add .bashrc"
echo "config commit -a -m \"added .bashrc\""
echo "config push"
echo
echo
echo "But first - reload session."
