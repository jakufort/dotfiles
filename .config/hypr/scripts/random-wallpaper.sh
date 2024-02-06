#!/bin/sh

while true; do
    killall swaybg
    swaybg -i $(find $HOME/.config/wallpapers/. -type f | shuf -n1)
    sleep 600
done

