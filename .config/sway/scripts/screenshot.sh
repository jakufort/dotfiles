#!/bin/bash
 
entries="Active Screen Output Area Window"
 
selected=$(printf '%s\n' $entries | wofi --style=$HOME/.config/wofi/style.widgets.css --conf=$HOME/.config/wofi/config.screenshot | awk '{print tolower($1)}')
 
case $selected in
  active)
    /usr/share/sway-contrib/grimshot --notify copy active;;
  screen)
    /usr/share/sway-contrib/grimshot --notify copy screen;;
  output)
    /usr/share/sway-contrib/grimshot --notify copy output;;
  area)
    /usr/share/sway-contrib/grimshot --notify copy area;;
  window)
    /usr/share/sway-contrib/grimshot --notify copy window;;
esac
