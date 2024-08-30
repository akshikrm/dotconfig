local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.window_decorations = "RESIZE"

config.font = wezterm.font("Monaspace Argon", { weight = 600 })
config.font_size = 18
config.enable_tab_bar = false
config.colors = {
	foreground = "grey",
	background = "#14161b",
	cursor_bg = "grey",
	cursor_fg = "#14161b",
	cursor_border = "#52ad70",
}
return config
