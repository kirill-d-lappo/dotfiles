#!/bin/bash

set -e

(
  REMOTE_CONFIG_REPO_URL="https://github.com/kirill-d-lappo/dotfiles.git"
  DOT_DIR="$HOME/.dotfiles/"
  TARGET_DIR="$HOME"
  FORCE_INSTALL=0

  print_usage() {
    echo "Usage: $0 [-fh]"
    echo "  -f:  Force installation"
    echo "  -h:  Print help"
  }

  has_command() {
    command -v "$1" &>/dev/null 2>&1
  }

  if ! has_command git; then
    echo -e "Git is required"
    exit 1
  fi

  if ! has_command stow; then
    echo -e "Stow is required"
    exit 1
  fi

  while getopts "fh" opt; do
    case $opt in
    f) FORCE_INSTALL=1 ;;
    h)
      print_usage
      exit 0
      ;;
    *)
      print_usage
      exit 1
      ;;
    esac
  done


  echo "Installing dotfiles...."

  if [[ -d "$DOT_DIR" ]]; then
    if [[ "$FORCE_INSTALL" -eq "1" ]]; then
      echo "Cleaning up existing dotfiles..."
      rm -rf "$DOT_DIR"
    else
      echo "Dotfiles already exists. Aborting to avoid conflicts."
      exit 1
    fi
  fi

  # clone git dir only
  echo "Cloning files repo..."
  git clone "$REMOTE_CONFIG_REPO_URL" "$DOT_DIR"
  if [[ "$?" -ne "0" ]]; then
    echo "Failed to clone the dotfiles repository. Please check your network connection and try again."
    exit 1
  fi

  # now need to configure git dir

  cd $DOT_DIR

  # configure remote for puling changes, setups fetch patterns
  # so `config pull` action works
  git remote remove origin
  git remote add origin $REMOTE_CONFIG_REPO_URL
  git fetch
  git branch -u origin/main main
  git pull

  echo "Attack, Stow!"

  # stow --dir and --target properties just do not work
  # "No package to stow or unstow"
  
  stow . 
  
  cd -

  # now general git configuration on a clean system, still doesn't break much on existing one
  echo "Configuring git ...."

  # setup name and email only when setup from scratch
  if [[ "$(git config --global user.name)" == "" ]]; then
    git config --global user.name "Kirill Lappo"
  fi

  if [[ "$(git config --global user.email)" == "" ]]; then
    git config --global user.email "kirill-lappo@outlook.com"
  fi

  # "git amend": so you can meld working changes into latest commit (any other commit as well, but usually latest)
  # "git amend -a": add everything to the latest commit, who cares
  git config --global alias.amend "commit --amend --no-edit"

  # "git lol": git history with graph and pretty format, lol ie log-one-line
  # "git lol -a": show all branches
  git config --global alias.lol "log --pretty=format:'%x09%x09 %Cred%h%Creset -%Creset %<(60,trunc)%s%Cgreen%<(13,trunc)(%cr) %C(bold blue)%<(15,trunc)<%an>%Creset %C(yellow)%d%Creset' --abbrev-commit --graph"

  # edit messages using basic nvim, without plugins
  git config --global core.editor "nvim -n --clean"

  # using delta as a pager and diff tool
  git config --global core.pager "delta"
  git config --global interactive.diffFilter "delta --color-only"

  git config --global delta.syntax-theme "Dracula"
  git config --global delta.line-numbers "true"
  git config --global delta.side-by-side "false"
  git config --global delta.navigate "true"
  git config --global delta.light "false"
  git config --global delta.tabs 2

  git config --global merge.conflictstyle zdiff3
  git config --global diff.colorMoved default

  # no need to prune everything manually at fetch/pull
  git config --global fetch.prune true
  git config --global fetch.pruneTags true

  # just do "git push" and git will create remote branch and set it as upstream to your local branch
  git config --global push.autoSetupRemote true

  # default branch, PC my ass
  git config --global init.defaultBranch main

  # install cargo tools

  cargo_tools=("bat" "zoxide" "starship" "eza" "fd-find" "alacritty" "viu" "git-delta")
  if has_command cargo; then
    echo "Installing helper tools using cargo"

    cargo install ${cargo_tools[*]}
  else
    echo "Cargo was not found, install rust sdk first, then execute command:"
    echo ""
    echo "cargo install ${cargo_tools[*]}"
  fi

  unset cargo_tools

  unset DOT_DIR
  unset TARGET_DIR
  unset FORCE_INSTALL

  echo ""
  echo "Done. Restart you session."
)
