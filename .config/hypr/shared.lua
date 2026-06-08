---@module 'hl'

-- Nvidia setup
hl.env('LIBVA_DRIVER_NAME', 'nvidia')
hl.env('__GLX_VENDOR_LIBRARY_NAME', 'nvidia')
hl.config({
  cursor = {
    no_hardware_cursors = true,
  },
})

hl.config({
  input = {
    kb_layout = 'pl',
    kb_variant = '',
    kb_model = '',
    kb_options = '',
    kb_rules = '',
    follow_mouse = 1,
    touchpad = {
      natural_scroll = false,
    },
    scroll_factor = 0.8,
    sensitivity = 0,
  },
})

hl.config({
  general = {
    gaps_in = 0,
    gaps_out = 0,
    border_size = 0,
    layout = 'master',
    allow_tearing = false,
    col = {
      active_border = { colors = { 'rgba(33ccffee)', 'rgba(00ff99ee)' }, angle = 45 },
      inactive_border = 'rgba(595959aa)',
    },
  },
})

hl.config({
  decoration = {
    rounding = 0,
    blur = {
      enabled = true,
      size = 3,
      passes = 1,
    },
    shadow = {
      enabled = true,
      range = 4,
      render_power = 3,
      color = 'rgba(1a1a1aee)',
    },
  },
})

hl.curve('myBezier', { type = 'bezier', points = { { 0.05, 0.9 }, { 0.1, 1.05 } } })

hl.animation({ leaf = 'windows', enabled = true, speed = 3, bezier = 'myBezier' })
hl.animation({ leaf = 'windowsOut', enabled = true, speed = 5, bezier = 'default', style = 'popin 80%' })
hl.animation({ leaf = 'border', enabled = true, speed = 8, bezier = 'default' })
hl.animation({ leaf = 'borderangle', enabled = true, speed = 8, bezier = 'default' })
hl.animation({ leaf = 'fade', enabled = true, speed = 2, bezier = 'default' })
hl.animation({ leaf = 'workspaces', enabled = true, speed = 1, bezier = 'default' })

hl.config({
  dwindle = {
    preserve_split = true,
  },
})

hl.config({
  master = {
    new_status = 'master',
    orientation = 'right',
    mfact = 0.5,
  },
})

hl.config({
  misc = {
    force_default_wallpaper = -1,
  },
})

hl.device({
  name = 'epic-mouse-v1',
  sensitivity = -0.5,
})

hl.config({
  ecosystem = {
    no_update_news = true,
  },
})

local mainMod = 'SUPER'

hl.bind(mainMod .. ' + ' .. 'return', hl.dsp.exec_cmd('ghostty'))
hl.bind(mainMod .. ' + ' .. 'SHIFT' .. ' + ' .. 'Q', hl.dsp.window.close())
hl.bind(mainMod .. ' + ' .. 'M', hl.dsp.exit())
hl.bind(mainMod .. ' + ' .. 'E', hl.dsp.exec_cmd('dolphin'))
hl.bind(mainMod .. ' + ' .. 'V', hl.dsp.window.float())
hl.bind(mainMod .. ' + D', hl.dsp.exec_cmd('tofi-drun --drun-launch=true'))
hl.bind(mainMod .. ' + ' .. 'P', hl.dsp.window.pseudo())

-- dwindle

-- bind = $mainMod, J, togglesplit, # dwindle
-- bind = $mainMod, left, movefocus, l
-- bind = $mainMod, right, movefocus, r
-- bind = $mainMod, up, movefocus, u
-- bind = $mainMod, down, movefocus, d

hl.bind(mainMod .. ' + ' .. 1, hl.dsp.focus({ workspace = 1 }))
hl.bind(mainMod .. ' + ' .. 2, hl.dsp.focus({ workspace = 2 }))
hl.bind(mainMod .. ' + ' .. 3, hl.dsp.focus({ workspace = 3 }))
hl.bind(mainMod .. ' + ' .. 4, hl.dsp.focus({ workspace = 4 }))
hl.bind(mainMod .. ' + ' .. 5, hl.dsp.focus({ workspace = 5 }))
hl.bind(mainMod .. ' + ' .. 6, hl.dsp.focus({ workspace = 6 }))
hl.bind(mainMod .. ' + ' .. 7, hl.dsp.focus({ workspace = 7 }))
hl.bind(mainMod .. ' + ' .. 8, hl.dsp.focus({ workspace = 8 }))
hl.bind(mainMod .. ' + ' .. 9, hl.dsp.focus({ workspace = 9 }))
hl.bind(mainMod .. ' + ' .. 0, hl.dsp.focus({ workspace = 10 }))
hl.bind(mainMod .. ' + ' .. 'SHIFT' .. ' + ' .. 1, hl.dsp.window.move({ workspace = 1 }))
hl.bind(mainMod .. ' + ' .. 'SHIFT' .. ' + ' .. 2, hl.dsp.window.move({ workspace = 2 }))
hl.bind(mainMod .. ' + ' .. 'SHIFT' .. ' + ' .. 3, hl.dsp.window.move({ workspace = 3 }))
hl.bind(mainMod .. ' + ' .. 'SHIFT' .. ' + ' .. 4, hl.dsp.window.move({ workspace = 4 }))
hl.bind(mainMod .. ' + ' .. 'SHIFT' .. ' + ' .. 5, hl.dsp.window.move({ workspace = 5 }))
hl.bind(mainMod .. ' + ' .. 'SHIFT' .. ' + ' .. 6, hl.dsp.window.move({ workspace = 6 }))
hl.bind(mainMod .. ' + ' .. 'SHIFT' .. ' + ' .. 7, hl.dsp.window.move({ workspace = 7 }))
hl.bind(mainMod .. ' + ' .. 'SHIFT' .. ' + ' .. 8, hl.dsp.window.move({ workspace = 8 }))
hl.bind(mainMod .. ' + ' .. 'SHIFT' .. ' + ' .. 9, hl.dsp.window.move({ workspace = 9 }))
hl.bind(mainMod .. ' + ' .. 'SHIFT' .. ' + ' .. 0, hl.dsp.window.move({ workspace = 10 }))

-- Example special workspace (scratchpad)
-- hl.bind(mainMod .. ' + ' .. 'S', hl.dsp.workspace.toggle_special('magic'))
-- hl.bind(mainMod .. ' + ' .. 'SHIFT' .. ' + ' .. 'S', hl.dsp.window.move('special:magic'))

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mainMod .. ' + ' .. 'mouse_down', hl.dsp.focus({ workspace = 'e+1' }))
hl.bind(mainMod .. ' + ' .. 'mouse_up', hl.dsp.focus({ workspace = 'e-1' }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. ' + ' .. 'mouse:272', hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. ' + ' .. 'mouse:273', hl.dsp.window.resize(), { mouse = true })

-- poweroff submap
hl.bind(mainMod .. ' + ' .. 'SHIFT' .. ' + ' .. 'E', hl.dsp.submap('(l)ougout (r)eboot (p)oweroff'))
hl.define_submap('(l)ougout (r)eboot (p)oweroff', function()
  hl.bind('R', hl.dsp.exec_cmd('systemctl reboot'))
  hl.bind('L', hl.dsp.exec_cmd('hyprctl dispatch exit'))
  hl.bind('P', hl.dsp.exec_cmd('systemctl poweroff'))
  hl.bind('escape', hl.dsp.submap('reset'))
end)

-- media buttons bind

hl.bind('XF86AudioRaiseVolume', hl.dsp.exec_cmd('wpctl set-volume -l 1.0 @DEFAULT_AUDIO_SINK@ 5%+'))
hl.bind('XF86AudioLowerVolume', hl.dsp.exec_cmd('wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-'))
hl.bind('XF86AudioMute', hl.dsp.exec_cmd('wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle'))
hl.bind('XF86AudioPlay', hl.dsp.exec_cmd('playerctl play-pause'))
hl.bind('XF86AudioPause', hl.dsp.exec_cmd('playerctl play-pause'))
hl.bind('XF86AudioNext', hl.dsp.exec_cmd('playerctl next'))
hl.bind('XF86AudioPrev', hl.dsp.exec_cmd('playerctl previous'))

-- blue light filter mapping
hl.bind(mainMod .. ' + ' .. 'C', hl.dsp.exec_cmd('hyprshade toggle blue-light-filter'))

-- screenshot
-- bind = , PRINT, exec, hyprshot -m region --clipboard-only
hl.bind('PRINT', hl.dsp.exec_cmd('QT_SCREEN_SCALE_FACTORS=1;1 flameshot gui --raw| wl-copy'))

-- window rules
hl.window_rule({
  name = 'match_title_firefox',
  match = {
    title = 'firefox',
  },
  workspace = 1,
})

hl.window_rule({
  name = 'signal',
  match = {
    class = 'org.signal.Signal',
  },
  workspace = 4,
  no_screen_share = true,
})

-- Autostart
hl.on('hyprland.start', function()
  hl.exec_cmd('dunst')
  hl.exec_cmd(os.getenv('HOME') .. '/.config/hypr/scripts/random-wallpaper.sh')
  hl.exec_cmd('waybar')
  hl.exec_cmd('/usr/bin/firefox')
  hl.exec_cmd('/usr/lib/polkit-kde-authentication-agent-1')
  hl.exec_cmd('/usr/lib/pam_kwallet_init')
  hl.exec_cmd('sleep 2 && org.signal.Signal')
  hl.exec_cmd('wl-paste --type text --watch cliphist store')
  hl.exec_cmd('wl-paste --type image --watch cliphist store')
end)
