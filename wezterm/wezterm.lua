local wezterm = require("wezterm")

local config = {}
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- Switch between "gruvbox" and "hybrid" (mirrors Xresources.gruvbox / Xresources.hybird on Linux)
local THEME = "gruvbox"

config.colors = dofile(wezterm.config_dir .. "/colors/" .. THEME .. ".lua")

-- From Xresources.base
config.font = wezterm.font("DejaVu Sans Mono for Powerline")
config.font_size = 9
config.scrollback_lines = 6096
config.enable_scroll_bar = true

config.window_close_confirmation = "NeverPrompt"
config.hide_tab_bar_if_only_one_tab = true
config.window_decorations = "RESIZE"

return config
