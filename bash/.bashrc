#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# History options
shopt -s cmdhist
shopt -s histappend
shopt -s lithist

HISTCONTROL=ignorespace:erasedups
HISTSIZE=4096
HISTFILESIZE=16384
HISTTIMEFORMAT="%FT%T%z "
