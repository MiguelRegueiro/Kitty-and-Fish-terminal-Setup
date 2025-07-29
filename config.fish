if status is-interactive
    # System info
    fastfetch

    # Abbreviations (better than aliases)
    abbr -a update "sudo dnf update"
    abbr -a upgrade "sudo dnf upgrade"

    # Starship prompt
    starship init fish | source
end
