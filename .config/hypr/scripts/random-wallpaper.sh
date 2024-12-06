#!/bin/sh

killall swaybg
sh -c "swaybg -i $(find $HOME/.config/wallpapers/. -type f | shuf -n1) > /dev/null 2>&1 &"

while true; do
  sleep 600
  PID=`pidof swaybg`
  sh -c "swaybg -i $(find $HOME/.config/wallpapers/. -type f | shuf -n1) > /dev/null 2>&1 &"
  sleep 1
  kill $PID
done

