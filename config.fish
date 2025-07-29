if status is-interactive
    # System info
    fastfetch

    # Abbreviations (better than aliases)
    abbr -a sshserver "ssh regueiro@100.108.179.88"
    abbr -a update "sudo dnf update"
    abbr -a upgrade "sudo dnf upgrade"

    # Starship prompt
    starship init fish | source
end
