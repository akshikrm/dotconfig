local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.window_decorations = "RESIZE"

config.font = wezterm.font("Monaspace Argon", { weight = 600 })
config.font_size = 18
config.enable_tab_bar = false
config.color_scheme = 'Catppuccin Mocha (Gogh)'

return config
