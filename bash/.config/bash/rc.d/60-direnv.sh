# shellcheck shell=bash
# Enable direnv if present

if always_hash direnv 2>/dev/null; then
    eval "$(direnv hook bash)"
fi