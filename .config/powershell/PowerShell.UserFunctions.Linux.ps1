
# On Linux I'd like to use functions overrides for some default utils (ls, cat, etc)
function ls {
    eza --color=auto --icons $args
}

function cat {
    bat --color=auto $args
}
