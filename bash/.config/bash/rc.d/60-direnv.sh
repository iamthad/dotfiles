# shellcheck shell=bash
# Enable direnv if present

oldopts="$-"
set -h
if hash direnv 2>/dev/null; then
    eval "$(direnv hook bash)"
fi
[[ "$oldopts" =~ "h" ]] || set +h
unset oldopts