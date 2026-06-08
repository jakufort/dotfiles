---@module 'hl'

hl.monitor({
  output = 'DP-1',
  mode = '3840x2160@144',
  position = '0x0',
  scale = 1.25,
})

hl.config({
  xwayland = {
    force_zero_scaling = true,
  },
})

--xwayland scaling

hl.env('GDK_SCALE', 1.25)
hl.env('XCURSOR_SIZE', 32)

require('shared')
