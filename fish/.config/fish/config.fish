# Set XDG base directories if unset
test -z "$XDG_CACHE_HOME"; and set -Ux XDG_CACHE_HOME "$HOME"/.cache
test -z "$XDG_CONFIG_HOME"; and set -Ux XDG_CONFIG_HOME "$HOME"/.config
test -z "$XDG_DATA_HOME"; and set -Ux XDG_DATA_HOME "$HOME"/.local/share

# Set some XDG compliance workarounds
test -z "$CCACHE_DIR"; and set -Ux CCACHE_DIR "$XDG_CACHE_HOME"/ccache

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
