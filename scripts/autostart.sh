#!/bin/bash

/bin/bash ./dwm-status.sh &
/bin/bash ./dwm-wallpaper.sh &

picom -b &

xcompmgr &

#variety &

mate-power-manager &

nm-applet &

# input method
fcitx5 &

xrandr --output HDMI-2 --auto --output eDP-1 --off &

