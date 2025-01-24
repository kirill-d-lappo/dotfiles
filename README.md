# Dotfiles

## Requirements

* git
* curl

## Installation

### Install Existing Dotfiles

```bash
curl -LSsf https://raw.githubusercontent.com/kirill-d-lappo/dotfiles/refs/heads/main/install.sh | bash
```

### Init New Dotfiles

Use to set up dotfiles

```bash
# Init dotfiles folder
curl -LSsf https://raw.githubusercontent.com/kirill-d-lappo/dotfiles/refs/heads/main/init.sh | bash

# restart session

# Create remote repo on your favourate git hoster
# git url for example: git@github.com:kirill-d-lappo/dotfiles.git

config remote add origin git@github.com:kirill-d-lappo/dotfiles.git
config branch -u origin/main main

# use it


```

## Post-installation

Add `config` command to `.bashrc`

```bash
# keep quotes this way so it could work for any user name
alias config="/usr/bin/git --git-dir='$HOME/.dotfiles.git/' --work-tree='$HOME'"
```

## Usage

`config` is just a `git`, but for your home folder

| Command                         | Description                                  |
|---------------------------------|----------------------------------------------|
| `config pull`                   | overwrire everthing with updates from remote |
| `config add -f .config/nvim/**` | add `nvim` config folder to `dotfiles`       |

## Sources

* ["Dotfiles: Best way to store in a bare git repository" by Atlassian](https://www.atlassian.com/git/tutorials/dotfiles)
