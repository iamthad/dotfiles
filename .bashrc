alias dfgit="git --work-tree=$HOME --git-dir=$HOME/.dfgit"
if [ -s .liquidprompt/liquidprompt ]; then
  . .liquidprompt/liquidprompt
else
  declare -x PS1="\h:\W \u\$ "
fi
export EDITOR="vim"
if [ -s .bashrc_local ]; then
  . .bashrc_local
fi
