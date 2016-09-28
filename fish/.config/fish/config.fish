switch (uname)
    case Darwin
    # Mac-specific setup
        if test -f ~/.iterm2_shell_integration.fish
          source ~/.iterm2_shell_integration.fish
        end
        # Initialize homebrew-command-not-found
        if brew command command-not-found-init ^/dev/null >/dev/null
          source (brew command-not-found-init)
        end
end
