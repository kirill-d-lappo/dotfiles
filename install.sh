#!/bin/bash

git --version 2>&1 >/dev/null
GIT_IS_AVAILABLE=$?

if [ $GIT_IS_AVAILABLE -ne 0 ]; then
    echo -e "Git is required"
    exit 1
fi

tdir="$HOME/.dotfiles.git"
wtree="$HOME"

echo "Installing dotfiles...."

# clone git dir only
git clone --bare "https://github.com/kirill-d-lappo/dotfiles.git" "$tdir"

# now need to configure git dir

# do not track untracked files, always add new ones with "config add -f file.sh"
git --git-dir="$tdir" --work-tree="$wtree" config --local status.showUntrackedFiles no

# use sparse checkout to exclude some files from checkout and pull operations
git --git-dir="$tdir" --work-tree="$wtree" config --local core.sparseCheckout true # enable sparse checkout, config file is .git/info/sparse-checkout
git --git-dir="$tdir" --work-tree="$wtree" sparse-checkout init                    # init sparse
git --git-dir="$tdir" --work-tree="$wtree" sparse-checkout set ""                  # clears all sparse rules
git --git-dir="$tdir" --work-tree="$wtree" sparse-checkout add "/**"               # include everything in the repo
git --git-dir="$tdir" --work-tree="$wtree" sparse-checkout add "!install.sh"       # exclude install script
git --git-dir="$tdir" --work-tree="$wtree" sparse-checkout add "!init.sh"          # exclude install script
git --git-dir="$tdir" --work-tree="$wtree" sparse-checkout add "!README.md"        # exclude readme

# fill in working tree (ie home directory), overwrite via -f [!!!!!!!!!]
git --git-dir="$tdir" --work-tree="$wtree" checkout -f

# configure remote for pushing changes
git --git-dir="$tdir" --work-tree="$wtree" remote set-url origin https://github.com/kirill-d-lappo/dotfiles.git

# now general git configuration on a clean system, still doesn't break much on existing one
echo "Configuring git ...."

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

git config --global merge.conflictstyle zdiff3
git config --global diff.colorMoved default

# no need to prune everything manually at fetch/pull
git config --global fetch.prune true
git config --global fetch.pruneTags true

# just do "git push" and git will create remote branch and set it as upstream to your local branch
git config --global push.autoSetupRemote true

# default branch, PC my ass
git config --global init.defaultBranch main

echo "Done. Restart you session."
