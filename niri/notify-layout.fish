# Using stdbuf to ensure line-by-line output without buffering
niri msg event-stream | while read -l line
    # Debug: uncomment the next line to see all events in terminal
        echo "change in lay"

    # Look for the KeyboardLayoutChanged event in the JSON stream
    if string match -q "*KeyboardLayoutChanged*" "$line"
        
        # Extract the layout name directly from the event line if possible
        # or fetch it from niri msg outputs
        set layout (niri msg --json outputs | jq -r '.[0].current_keymap_name' 2>/dev/null)
        
        # Send notification
        notify-send -e -t 1000 \
            -h string:x-canonical-private-synchronous:kb-layout \
            "Keyboard Layout" \
            "Active: $layout" \
            --icon=input-keyboard
    end
end