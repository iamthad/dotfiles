alias ls='ls --color=auto'
declare -x PS1="\h:\W \u\$ "
if [ -s .bashrc_local ]; then
  . .bashrc_local
fi
