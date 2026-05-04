function shell-launcher
    set current_shell (cat /tmp/current_niri_shell 2>/dev/null)

    switch "$current_shell"
        case "Noctalia"
            qs -c noctalia-shell ipc call launcher toggle
        case "Dank Material Shell"
            dms ipc launcher toggle
        case '*'
            fuzzel
    end
end
