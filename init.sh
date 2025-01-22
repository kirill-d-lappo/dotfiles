#!/bin/bash

# Inits dotfiles config in home directory

tdir="$HOME/.dotfiles.temp.git"
wtree="$HOME/.dotfiles.temp.wt"

git init --bare $tdir

git --git-dir="$tdir" --work-tree="$wtree" config --local status.showUntrackedFiles no

echo "alias config=\"/usr/bin/git --git-dir='\$HOME/.dotfiles.git' --work-tree='\$HOME'\" " >>$HOME/.bashrc_temp

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
