-- ## Shell keybinds
hl.bind("ALT + Space", hl.dsp.global("caelestia:launcher"), { locked = true })
hl.bind("SUPER + TAB", hl.dsp.exec_cmd("qs ipc -c overview call overview toggle"))

-- ## Misc
hl.bind("SUPER + L", hl.dsp.global("caelestia:lock"))

-- ## Brightness
hl.bind("XF86MonBrightnessUp", hl.dsp.global("caelestia:brightnessUp"), { locked = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.global("caelestia:brightnessDown"), { locked = true })

-- ## Media
hl.bind("CTRL + Space", hl.dsp.global("caelestia:mediaToggle"), { locked = true })

-- ## Kill/restart
hl.bind("CTRL + SUPER + SHIFT + R", hl.dsp.exec_cmd("qs -c caelestia kill && hyprctl reload && caelestia shell -d"),
    { release = true })

-- ## Utilities
hl.bind("Print", hl.dsp.exec_cmd("caelestia screenshot"), { locked = true })
hl.bind("SUPER + SHIFT + S", hl.dsp.global("caelestia:screenshotFreeze"))
hl.bind("SUPER + SHIFT + P", hl.dsp.exec_cmd("hyprpicker -a"))

-- ## Testing
hl.bind("SUPER + ALT + T",
    hl.dsp.exec_cmd(
        "notify-send -u low -i dialog-information-symbolic 'Test notification' \"Here's a really long message to test truncation and wrapping\\nYou can middle click or flick this notification to dismiss it!\" -a 'Shell' -A \"Test1=I got it!\" -A \"Test2=Another action\""),
    { locked = true })
