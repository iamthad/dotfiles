# shellcheck shell=bash
# Aliases

    alias ls='ls --color=auto'
elif ls -G /dev/null >/dev/null 2>&1 ; then
    alias ls='ls -G'
fi
alias la='ls -A'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias gdb='gdb -nh -x $HOME/.config/gdb/init'