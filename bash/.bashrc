#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

for f in "${XDG_CONFIG_HOME:-$HOME/.config}"/bash/rc.d/*.sh; do
    . "$f"
done