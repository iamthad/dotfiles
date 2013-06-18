alias dfgit="git --work-tree=$HOME --git-dir=$HOME/.dfgit"
# Only execute in interactive shells
case $- in *i*)
if [ -s .liquidprompt/liquidprompt ]; then
  . .liquidprompt/liquidprompt
else
  declare -x PS1="\h:\W \u\$ "
fi
esac
export EDITOR="vim"
if [ -s .bashrc_local ]; then
  . .bashrc_local
fi
