--
--
--

---@module 'hl'

--################

--## AUTOSTART ###

--################

-- Autostart necessary processes (like notifications daemons, status bars, etc.)

-- Or execute your favorite apps at launch like this:

-- exec-once = $terminal

-- exec-once = nm-applet &







-- Autostart
hl.on("hyprland.start", function()
    hl.exec_cmd("waybar -c ~/.config/waybar/config.jsonc")
    hl.exec_cmd("waybar -c ~/.config/waybar/sidebar/config.jsonc -s ~/.config/waybar/sidebar/style.css")
    hl.exec_cmd("swaync")
    hl.exec_cmd("~/.local/bin/wallpaper")
    hl.exec_cmd("wl-paste --type text --watch cliphist store")
    hl.exec_cmd("wl-paste --type image --watch cliphist store")
end)
