#!/bin/bash

set -e

function main() {

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

  stow . --adopt

  cd -

  cargo_tools=("bat" "zoxide" "starship" "eza" "alacritty" "git-delta") # install cargo tools
  if has_command cargo; then
    echo "Installing helper tools using cargo"
    echo ""

    cargo install ${cargo_tools[*]}
  elif has_command pacman; then
    echo "Installing helper tools using pacman"
    echo ""

    sudo pacman -Sy ${cargo_tools[*]}
  else
    echo "Can't install tools"
  fi

  echo ""
  echo "Done. Restart you session."
}

(
  main
)
