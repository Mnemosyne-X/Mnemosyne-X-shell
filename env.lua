--
--
--

---@module 'hl'

--############################

--## ENVIRONMENT VARIABLES ###

--############################

-- See https://wiki.hypr.land/Configuring/Environment-variables/

hl.env("XCURSOR_SIZE", 24)

hl.env("HYPRCURSOR_SIZE", 24)

hl.env("XDG_SESSION_TYPE", "wayland")

--XDG_*(lets apps know that you're on wayland to prevent fallback bugs)

hl.env("XDG_CURRENT_DESKTOP", "Hyprland")

hl.env("XDG_SESSION_DESKTOP", "Hyprland")

hl.env("QT_QPA_PLATFORM", "wayland")

--forces QT apps to use wayland

hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", 1)

hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")



--to not have double waybar

hl.env("MOZ_ENABLE_WAYLAND", 1)

--firefox uses wayland instead of xwayland

hl.env("GTK_IM_MODULE", "wayland")

hl.env("QT_IM_MODULE", "fcitx")

hl.env("XMODIFIERS", "@im=fcitx")

hl.env("SDL_IM_MODULE", "wayland")



hl.env("SDK_IM_MODULE", "fctix")

hl.env("GLFW_IM_MODULE", "ibus")
