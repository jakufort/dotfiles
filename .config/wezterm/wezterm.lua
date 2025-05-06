local wezterm = require('wezterm')

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.font_size = 18

config.color_scheme = 'rose-pine-moon'
config.font = wezterm.font('JetBrains Mono NL')
config.window_background_opacity = 0.9
config.hide_tab_bar_if_only_one_tab = true

config.keys = {
  {
    key = 'n',
    mods = 'SUPER',
    action = wezterm.action.SplitHorizontal({
      domain = 'CurrentPaneDomain',
    }),
  },
  {
    key = 'n',
    mods = 'SUPER|SHIFT',
    action = wezterm.action.SplitVertical({
      domain = 'CurrentPaneDomain',
    }),
  },
}

config.colors = {
  selection_bg = '#444444',
  split = '#ea9a97',
}

config.inactive_pane_hsb = {
  saturation = 0.4,
  brightness = 0.4,
}

config.enable_wayland = true

return config
