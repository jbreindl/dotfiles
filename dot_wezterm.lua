-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.

-- or, changing the font size and color scheme.
config.font = wezterm.font("Fira Code", { weight = "Regular" })
config.font_size = 16
config.color_scheme = "Solarized Light (Gogh)"
config.enable_tab_bar = false
config.font_dirs = { "/usr/share/fonts", "/usr/share/fonts-font-awesome/" }

-- transparency
config.window_background_opacity = 1.0

-- don't ask me if I want to quit when I close the last window
config.window_close_confirmation = "NeverPrompt"

-- Finally, return the configuration to wezterm:
return config
