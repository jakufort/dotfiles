local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.color_scheme = 'rose-pine-moon'
config.font = wezterm.font 'JetBrains Mono NL'
config.window_background_opacity = 0.9
config.hide_tab_bar_if_only_one_tab = true

config.keys = {
 {
   key = 'n',
   mods = 'ALT',
   action = wezterm.action.SplitHorizontal {
     domain = 'CurrentPaneDomain'
   }
 },
 {
   key = 'n',
   mods = 'ALT|SHIFT',
   action = wezterm.action.SplitVertical {
     domain = 'CurrentPaneDomain'
   }
 }
}

config.enable_wayland = false

return config
