# Dotfiles

## Requirements

* git
* curl

## Installation

```bash
curl -Ss https://raw.githubusercontent.com/kirill-d-lappo/dotfiles/refs/heads/main/install.sh | bash
```

## Usage

Add `config` command to `.bashrc`

```bash
# keep quotes this way so it could work for any user name
alias config="/usr/bin/git --git-dir='$HOME/.dotfiles/' --work-tree='$HOME'"
```

## Sources 

* ["Dotfiles: Best way to store in a bare git repository" by Atlassian](https://www.atlassian.com/git/tutorials/dotfiles)

