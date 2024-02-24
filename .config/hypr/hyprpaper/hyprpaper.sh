#!/bin/bash
#

# Wallpaper reloading script
#
hyprid=$(ps -A | grep hyprpaper | grep -E -o '[0-9]*4')

if [  ! -z "$PID"  ]; then 
    killall hyprpaper
    pkill hyprpaper
else
    hyprpaper -c ~/NewDotFiles/.config/hypr/hyprpaper/default.conf
fi

