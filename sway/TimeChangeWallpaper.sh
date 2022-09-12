#! /bin/bash
export SWAYSOCK=$(ls /run/user/1000/sway-ipc.*.sock)
sleep 1
files=(/home/fan/Wallpaper/*)
sleep 1
swaymsg output eDP-1 bg ${files[RANDOM % ${#files[@]}]} fill
swaymsg output HDMI-A-1 bg ${files[RANDOM % ${#files[@]}]} fill 
