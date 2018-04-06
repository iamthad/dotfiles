
# Set XDG base directories if unset
test -z "$XDG_CACHE_HOME"; and set -Ux XDG_CACHE_HOME "$HOME"/.cache
test -z "$XDG_CONFIG_HOME"; and set -Ux XDG_CONFIG_HOME "$HOME"/.config
test -z "$XDG_DATA_HOME"; and set -Ux XDG_DATA_HOME "$HOME"/.local/share

# Set some XDG compliance workarounds
test -z "$CARGO_HOME"; and set -Ux CARGO_HOME "$XDG_DATA_HOME"/cargo
test -z "$CCACHE_DIR"; and set -Ux CCACHE_DIR "$XDG_CACHE_HOME"/ccache
test -z "$GEM_HOME"; and set -Ux GEM_HOME "$XDG_DATA_HOME"/gem
test -z "$GEM_SPEC_CACHE"; and set -Ux GEM_SPEC_CACHE "$XDG_CACHE_HOME"/gem/specs
test -z "$INPUTRC"; and set -Ux INPUTRC "$XDG_CONFIG_HOME"/readline/inputrc
test -z "$RBENV_ROOT"; and set -Ux RBENV_ROOT "$XDG_DATA_HOME"/rbenv
test -z "$RUSTUP_HOME"; and set -Ux RUSTUP_HOME "$XDG_DATA_HOME"/rustup
test -z "$TMUX_TMPDIR"; and set -Ux TMUX_TMPDIR "$XDG_RUNTIME_DIR"

# MOTD
function echo_color
  # printf "\033[0;90m$argv[1]\033[0m\n"
  printf "\033[2m$argv[1]\033[22m\n"
end
if status --is-interactive
    echo_color "┏━━━━┯━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┳━━━━┯━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓"
    echo_color "┃ ⌃f │ Move forward                  ┃ ⌃b │ Move backward                    ┃"
    echo_color "┃ ⌃p │ Move up                       ┃ ⌃n │ Move down                        ┃"
    echo_color "┃ ⌃a │ Jump to beginning of line     ┃ ⌃e │ Jump to end of line              ┃"
    echo_color "┃ ⌃d │ Delete forward                ┃ ⌃h │ Delete backward                  ┃"
    echo_color "┃ ⌃k │ Delete forward to end of line ┃ ⌃u │ Delete backward to start of line ┃"
    echo_color "┗━━━━┷━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┻━━━━┷━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"
end

if not test -f ~/.config/fish/functions/fisher.fish
    echo "Installing fisherman..."
    curl -sLo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher
    fisher
end

if test -f ~/perl5/lib/perl5/local/lib.pm
    begin
        # When logged in via ssh, starting fish doesn’t set $SHELL
        set -lx SHELL (which fish)
        perl -I ~/perl5/lib/perl5 -Mlocal::lib | source
    end
end

if which direnv ^/dev/null >/dev/null
    direnv hook fish | source
end

if which thefuck ^/dev/null >/dev/null
    thefuck --alias | source
end

switch (uname)
    case Darwin
    # Mac-specific setup
        if test -n "$ITERM_SESSION_ID"
            if test -f ~/.iterm2_shell_integration.fish
                source ~/.iterm2_shell_integration.fish
            end
        end
        # Initialize homebrew-command-not-found
        if brew command command-not-found-init ^/dev/null >/dev/null
            source (brew command-not-found-init)
        end
end
