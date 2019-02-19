# Enable direnv if present
set -h -- "-${-:--}" "$@"
if hash direnv 2>/dev/null; then
    eval "$(direnv hook bash)"
fi
set +h "$@"