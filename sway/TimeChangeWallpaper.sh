#! /bin/bash
systemctl --user import-environment SWAYSOCK
files=(/home/fan/Wallpaper/*)
swaymsg output eDP-1 bg ${files[RANDOM % ${#files[@]}]} fill
swaymsg output HDMI-A-1 bg ${files[RANDOM % ${#files[@]}]} fill 
