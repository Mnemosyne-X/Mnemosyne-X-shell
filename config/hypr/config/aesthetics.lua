--
--
--

---@module 'hl'

--####################

--## AESTHETICS ###

--####################

-- Refer to https://wiki.hypr.land/Configuring/Variables/

-- https://wiki.hypr.land/Configuring/Variables/#general

hl.config({
    general = {
        gaps_in = 2,
        gaps_out = 5,
        border_size = 2,
        -- https://wiki.hypr.land/Configuring/Variables/#variable-types for info about colors
        -- Set to true enable resizing windows by clicking and dragging on borders and gaps
        resize_on_border = true,
        -- Please see https://wiki.hypr.land/Configuring/Tearing/ before you turn this on
        allow_tearing = false,
        layout = "dwindle",
        col = {
            active_border = "rgba(ffffffff)",
            inactive_border = "rgba(2b2b2baa)",
        },
    },
})

-- https://wiki.hypr.land/Configuring/Variables/#decoration

hl.config({
    decoration = {
        rounding = 10,
        rounding_power = 2,
        -- Change transparency of focused and unfocused windows
        active_opacity = 0.95,
        inactive_opacity = 0.45,
        shadow = {
            enabled = true,
            range = 4,
            render_power = 3,
            color = "rgba(1a1a1aee)",
        },
        -- https://wiki.hypr.land/Configuring/Variables/#blur
        blur = {
            enabled = true,
            size = 3,
            passes = 1,
            vibrancy = 0.1696,
        },
    },
})

-- https://wiki.hypr.land/Configuring/Variables/#animations

---@module 'hl'

hl.config({
    animations = {
        enabled = true,

        bezier = {
            {
                name = "default",
                x0 = 0.25,
                y0 = 0.10,
                x1 = 0.25,
                y1 = 1.00,
            },
            {
                name = "smoothOut",
                x0 = 0.22,
                y0 = 1.00,
                x1 = 0.36,
                y1 = 1.00,
            },
            {
                name = "smoothInOut",
                x0 = 0.65,
                y0 = 0.00,
                x1 = 0.35,
                y1 = 1.00,
            },
            {
                name = "quick",
                x0 = 0.20,
                y0 = 0.00,
                x1 = 0.10,
                y1 = 1.00,
            },
        },

        animation = {
            -- Windows: soft, smooth, no pop-in
            {
                name = "windows",
                duration = 2,
                curve = "smoothOut",
            },
            {
                name = "windowsIn",
                duration = 2,
                curve = "smoothOut",
            },
            {
                name = "windowsOut",
                duration = 2,
                curve = "smoothInOut",
            },

            -- Keep fade subtle
            {
                name = "fade",
                duration = 2,
                curve = "default",
            },

            --
            {
                name = "workspaces",
                duration = 2,
                curve = "smoothInOut",
                style = "slidefade",
            },
            {
                name = "workspacesIn",
                duration = 2,
                curve = "smoothOut",
                style = "slidefade",
            },
            {
                name = "workspacesOut",
                duration = 2,
                curve = "smoothInOut",
                style = "slidefade",
            },
        },
    },
})

-- Ref https://wiki.hypr.land/Configuring/Workspace-Rules/

-- "Smart gaps" / "No gaps when only"

-- uncomment all if you wish to use that.

-- workspace = w[tv1], gapsout:0, gapsin:0

-- workspace = f[1], gapsout:0, gapsin:0

-- windowrule {

--     name = no-gaps-wtv1

--     match:float = false

--     match:workspace = w[tv1]

--

--     border_size = 0

--     rounding = 0

-- }

--

-- windowrule {

--     name = no-gaps-f1

--     match:float = false

--     match:workspace = f[1]

--

--     border_size = 0

--     rounding = 0

-- }

-- See https://wiki.hypr.land/Configuring/Dwindle-Layout/ for more

hl.config({
    dwindle = {
        --  pseudotile = true # Master switch for pseudotiling. Enabling is bound to mainMod + P in the keybinds section below
        preserve_split = true,
        -- You probably want this
    },
})

-- See https://wiki.hypr.land/Configuring/Master-Layout/ for more

hl.config({
    master = {
        new_status = "master",
    },
})

-- https://wiki.hypr.land/Configuring/Variables/#misc

hl.config({
    misc = {
        force_default_wallpaper = 0,
        -- Set to 0 or 1 to disable the anime mascot wallpapers
        disable_hyprland_logo = true,
        -- If true disables the random hyprland logo / anime girl background. :(
    },
})
