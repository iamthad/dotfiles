# History options
shopt -s cmdhist
shopt -s histappend
shopt -s lithist

HISTCONTROL=ignorespace:erasedups
HISTSIZE=4096
HISTFILESIZE=16384
HISTTIMEFORMAT="%FT%T%z "

histdir="${XDG_DATA_HOME:-$HOME/.local/share}"/bash
[[ -d "$histdir"  ]] || mkdir -p "$histdir"
HISTFILE="$histdir"/history
unset histdir