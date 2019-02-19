#
# ~/.profile
#

[ -d "$HOME/.local/bin" ] && export PATH="$HOME/.local/bin:$PATH"


# XDG base directory workarounds
# From https://wiki.archlinux.org/index.php/XDG_Base_Directory#Partial

XDG_CACHE_HOME=${XDG_CACHE_HOME:-$HOME/.cache}
XDG_CONFIG_HOME=${XDG_CONFIG_HOME:-$HOME/.config}
XDG_DATA_HOME=${XDG_DATA_HOME:-$HOME/.local/share}

export BUNDLE_USER_CACHE="$XDG_CACHE_HOME"/bundle
export BUNDLE_USER_CONFIG="$XDG_CONFIG_HOME"/bundle
export BUNDLE_USER_PLUGIN="$XDG_DATA_HOME"/bundle
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export CCACHE_DIR="$XDG_CACHE_HOME"/ccache
export GEM_HOME="$XDG_DATA_HOME"/gem
export GEM_SPEC_CACHE="$XDG_CACHE_HOME"/gem/specs
export INPUTRC="$XDG_CONFIG_HOME"/readline/inputrc
export PARALLEL_HOME="$XDG_CONFIG_HOME"/parallel
export RBENV_ROOT="$XDG_DATA_HOME"/rbenv
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup

[ -d "$CARGO_HOME/bin" ] && export PATH="$CARGO_HOME/bin:$PATH"