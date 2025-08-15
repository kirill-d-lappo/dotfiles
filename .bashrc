# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

if [ "$NFSMW" == "1" ]
then
  alias ls='ls --color=never'
else
	alias ls='eza --color=never --icons'
fi

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto --icons'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'

		if [ "$NFSMW" == "1" ]
		then
		  alias ls='ls -1 --color=auto --group-directories-first'
    else
		  alias ls='eza -1 --color=auto --icons --group-directories-first'
    fi
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

if [ "$NFSMW" == "" ]
then
  eval "$(starship init bash)"
fi

eval "$(zoxide init bash)"
alias cd=z

export DOTNET_CLI_TELEMETRY_OPTOUT=1
. "$HOME/.cargo/env"

dev(){
    cd ~/workspace/vopty/src
}

export EDITOR=nvim

export NVS_HOME="$HOME/.nvs"

[ -s "$NVS_HOME/nvs.sh" ] && . "$NVS_HOME/nvs.sh"

export PATH="$HOME/.local/bin:$PATH"
export APOLLO_TELEMETRY_DISABLED=true

# git
# alias clb='git branch --merged | egrep -v "(^\*|master|dev|release|main)" |  xargs --no-run-if-empty git branch -d'
# git end

# dotnet telemetry
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export DOTNET_TELEMETRY_OPTOUT=1
# dotnet telemetry end

# mssql tools
export PATH="$PATH:/opt/mssql-tools18/bin"
# mssql tools end

# another stuff

# https://github.com/stolk/imcat
export IMCATBG="#232136"

# pnpm
export PNPM_HOME="/home/klappo/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# Vopty Development
export CSV="Server=localhost;Initial Catalog=vopty;User Id=test;Password=Password1! ;Persist Security Info=False;Encrypt=False"

export ConnectionStrings__Routes=$CSV
export ConnectionStrings__RoutesRecording=$CSV
export ConnectionStrings__Administration=$CSV


. "/home/klappo/.wasmedge/env"

export WASMTIME_HOME="$HOME/.wasmtime"

export PATH="$WASMTIME_HOME/bin:$PATH"

alias keriovpn="sudo service kerio-kvc restart && cat /var/log/kerio-kvc/debug.log | grep MAC | tail -1 | tr - : |rev|cut -d' '  -f 1|rev| xargs -I {} sudo ip link set kvnet addr {}"

alias fzf="fzf --preview='less {}' --bind shift-up:preview-page-up,shift-down:preview-page-down"

export PATH=$HOME/bin:$PATH
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
export PATH="${HOME}/.local/share/powershell/bin/:$PATH"

alias kubectx="kubectl ctx"
alias kubens="kubectl ns"

export NEXT_TELEMETRY_DISABLED=1

source "/home/klappo/.rover/env"

export NUGET_CREDENTIALPROVIDER_SESSIONTOKENCACHE_ENABLED=false

export Okta__DevMode__Enabled=true
export Okta__DevMode__OktaId="auth0|65aa4cd4ccb291219cb2eb81"
export Okta__DevMode__OrganizationId=32
export Okta__DevMode__SpaceId=32

alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

alias cat=bat

alias q=exit

# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

case ":$PATH:" in
    *:/home/klappo/.juliaup/bin:*)
        ;;

    *)
        export PATH=/home/klappo/.juliaup/bin${PATH:+:${PATH}}
        ;;
esac

# <<< juliaup initialize <<<

export PATH="$PATH:$HOME/go/bin"

alias config='/usr/bin/git --git-dir=/home/klappo/.dotfiles/ --work-tree=/home/klappo'
