function sw --description "Switch Niri Shells (Noctalia/DMS)"
    killall mako noctalia dms quickshell qs 2>/dev/null

    switch $argv[1]
        case noctalia

            qs -c noctalia-shell &
            echo "Noctalia" > /tmp/current_niri_shell

            sleep 4

        case dms
            dms run &
            echo "Dank Material Shell" > /tmp/current_niri_shell

            sleep 4
            notify-send "Niri" "Welcome to Dank Material Shell"&

        case ii
            qs -c ii
            echo "INIR Shell" > /tmp/current_niri_shell

            sleep 4
            notify-send "Niri" "Welcome to INIR Shell"&

        case '*'
            echo "Avilable: sw noctalia or sw dms"
    end
end