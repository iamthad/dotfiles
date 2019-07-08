# shellcheck shell=bash
# Aliases
if ls --color=auto /dev/null >/dev/null 2>&1 ; then
    alias ls='ls --color=auto'
elif ls -G /dev/null >/dev/null 2>&1 ; then
    alias ls='ls -G'
fi
alias la='ls -A'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

if always_hash gdb 2>/dev/null; then
    alias gdb='gdb -nh -x $HOME/.config/gdb/init'
fi
