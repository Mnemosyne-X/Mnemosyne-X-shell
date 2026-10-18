---@module 'hl'

local programs = require("config.myprograms")

local mainMod = "SUPER"

--##################
--## KEYBINDINGS ###
--##################

-- Applications

hl.bind(mainMod .. " + RETURN", hl.dsp.exec_cmd(programs.terminal))

hl.bind(mainMod .. " + Q", hl.dsp.window.close())

hl.bind(mainMod .. " + M", hl.dsp.exit())

hl.bind(mainMod .. " + F", hl.dsp.exec_cmd(programs.fileManager))

hl.bind(mainMod .. " + D", hl.dsp.exec_cmd(programs.quickshell))


hl.bind(mainMod .. " + SHIFT + T", hl.dsp.window.float())

hl.bind(mainMod .. " + R", hl.dsp.exec_cmd(programs.menu))

hl.bind(mainMod .. " + L", hl.dsp.layout("togglesplit"))

hl.bind(mainMod .. " + B", hl.dsp.exec_cmd(programs.browser))

hl.bind(mainMod .. " + X", hl.dsp.exec_cmd(programs.search))

hl.bind(mainMod .. " + N", hl.dsp.exec_cmd("swaync-client -t"))

hl.bind(mainMod .. " + T", hl.dsp.exec_cmd("torbrowser-launcher"))

hl.bind(mainMod .. " + SHIFT + N", hl.dsp.exec_cmd("kitty -e nvim"))

hl.bind(mainMod .. " + SHIFT + S", hl.dsp.exec_cmd(programs.screenrecord))

hl.bind(mainMod .. " + W", hl.dsp.exec_cmd("~/.local/bin/wallpaper"))

hl.bind(mainMod .. " + SHIFT + W", hl.dsp.exec_cmd(programs.aniwall))

hl.bind(mainMod .. " + Y", hl.dsp.exec_cmd("kitty -e yazi"))

hl.bind(mainMod .. " + SHIFT + L", hl.dsp.exec_cmd("localsend"))

hl.bind(mainMod .. " + Z", hl.dsp.exec_cmd(programs.musicmenu))

hl.bind(mainMod .. " + C", hl.dsp.exec_cmd(programs.clipboard))

hl.bind(mainMod .. " + CTRL + S", hl.dsp.exec_cmd(programs.screenshot))

hl.bind(mainMod .. " + K", hl.dsp.exec_cmd(programs.osk))

hl.bind(mainMod .. " + G", hl.dsp.exec_cmd("kitty -e " .. programs.sv))

hl.bind(mainMod .. " + O", hl.dsp.exec_cmd(programs.odup))

hl.bind(mainMod .. " + SHIFT + O", hl.dsp.exec_cmd(programs.oddn))




--##################
--## WINDOW FOCUS ##
--##################

hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "left" }))

hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))

hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "up" }))

hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "down" }))

hl.bind("ALT + TAB", hl.dsp.focus({ direction = "left" }))


--#####################
--## WORKSPACE FOCUS ##
--#####################

hl.bind(mainMod .. " + 1", hl.dsp.focus({ workspace = 1 }))
hl.bind(mainMod .. " + 2", hl.dsp.focus({ workspace = 2 }))
hl.bind(mainMod .. " + 3", hl.dsp.focus({ workspace = 3 }))
hl.bind(mainMod .. " + 4", hl.dsp.focus({ workspace = 4 }))
hl.bind(mainMod .. " + 5", hl.dsp.focus({ workspace = 5 }))
hl.bind(mainMod .. " + 6", hl.dsp.focus({ workspace = 6 }))
hl.bind(mainMod .. " + 7", hl.dsp.focus({ workspace = 7 }))
hl.bind(mainMod .. " + 8", hl.dsp.focus({ workspace = 8 }))
hl.bind(mainMod .. " + 9", hl.dsp.focus({ workspace = 9 }))
hl.bind(mainMod .. " + 0", hl.dsp.focus({ workspace = 10 }))


--######################
--## MOVE TO WORKSPACE #
--######################

hl.bind(mainMod .. " + SHIFT + 1", hl.dsp.window.move({ workspace = 1 }))
hl.bind(mainMod .. " + SHIFT + 2", hl.dsp.window.move({ workspace = 2 }))
hl.bind(mainMod .. " + SHIFT + 3", hl.dsp.window.move({ workspace = 3 }))
hl.bind(mainMod .. " + SHIFT + 4", hl.dsp.window.move({ workspace = 4 }))
hl.bind(mainMod .. " + SHIFT + 5", hl.dsp.window.move({ workspace = 5 }))
hl.bind(mainMod .. " + SHIFT + 6", hl.dsp.window.move({ workspace = 6 }))
hl.bind(mainMod .. " + SHIFT + 7", hl.dsp.window.move({ workspace = 7 }))
hl.bind(mainMod .. " + SHIFT + 8", hl.dsp.window.move({ workspace = 8 }))
hl.bind(mainMod .. " + SHIFT + 9", hl.dsp.window.move({ workspace = 9 }))
hl.bind(mainMod .. " + SHIFT + 0", hl.dsp.window.move({ workspace = 10 }))


--######################
--## SPECIAL WORKSPACE #
--######################

hl.bind(mainMod .. " + S", hl.dsp.workspace.toggle_special("magic"))

hl.bind(
    mainMod .. " + SHIFT + S",
    hl.dsp.window.move({ workspace = "special:magic" })
)

hl.bind(mainMod .. " + TAB", hl.dsp.focus({ workspace = "e+1" }))


--##################
--## SCROLLING #####
--##################

hl.bind(
    mainMod .. " + mouse_down",
    hl.dsp.focus({ workspace = "e+1" })
)

hl.bind(
    mainMod .. " + mouse_up",
    hl.dsp.focus({ workspace = "e-1" })
)


--######################
--## MOUSE BINDS #######
--######################

hl.bind(
    mainMod .. " + mouse:272",
    hl.dsp.window.drag(),
    { mouse = true }
)

hl.bind(
    mainMod .. " + mouse:273",
    hl.dsp.window.resize(),
    { mouse = true }
)


--########################
--## MEDIA / BRIGHTNESS ##
--########################

hl.bind(
    "XF86AudioRaiseVolume",
    hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
    { locked = true }
)

hl.bind(
    "XF86AudioLowerVolume",
    hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
    { locked = true }
)

hl.bind(
    "XF86AudioMute",
    hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
    { locked = true }
)

hl.bind(
    "XF86AudioMicMute",
    hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
    { locked = true }
)

hl.bind(
    "XF86MonBrightnessUp",
    hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),
    { locked = true }
)

hl.bind(
    "XF86MonBrightnessDown",
    hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),
    { locked = true }
)


--##################
--## MEDIA PLAYER ##
--##################

hl.bind(
    "XF86AudioNext",
    hl.dsp.exec_cmd("playerctl next"),
    { locked = true }
)

hl.bind(
    "XF86AudioPause",
    hl.dsp.exec_cmd("playerctl play-pause"),
    { locked = true }
)

hl.bind(
    "XF86AudioPlay",
    hl.dsp.exec_cmd("playerctl play-pause"),
    { locked = true }
)

hl.bind(
    "XF86AudioPrev",
    hl.dsp.exec_cmd("playerctl previous"),
    { locked = true }
)
