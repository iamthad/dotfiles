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
