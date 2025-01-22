# Dotfiles

## Requirements

* git
* curl

## Installation

```bash
curl -Ss https://raw.githubusercontent.com/kirill-d-lappo/dotfiles/refs/heads/main/install.sh | bash
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
