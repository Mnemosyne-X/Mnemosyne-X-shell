---@module 'hl'

local M = {}

M.terminal = "kitty"
M.fileManager = "dolphin"
M.quickshell = "pkill quickshell || quickshell"
M.menu = "pkill rofi || bash ~/.config/rofi/launcher/launcher.sh"
M.browser = "firefox"
M.search = "pkill firefox --private-window || firefox --private-window"
M.texteditor = "neovim"
M.musicmenu = "pkill rofi || bash ~/.config/rofi/applets/music/music.sh"
M.clipboard = "pkill rofi || bash ~/.config/rofi/applets/clipboard/clipboard.sh"
M.screenrecord = "pkill kooha || kooha"
M.screenshot = "pkill ~/.local/bin/screenshot.sh || bash ~/.local/bin/screenshot.sh"
M.aniwall = "bash ~/.local/bin/mpvpaper.sh"
M.sv = "bash ~/Games/SV/launch-stardew.sh"
M.odup = "bash ~/.local/bin/odup.sh"
M.oddn = "bash ~/.local/bin/oddn.sh"
M.osk = "bash -c 'pgrep -x wvkbd-mobintl >/dev/null && pkill -x wvkbd-mobintl || wvkbd-mobintl &'"

return M
