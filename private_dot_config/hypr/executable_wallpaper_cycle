#!/bin/bash

# Path to your wallpapers directory
WALLPAPER_DIR="$HOME/.config/hypr/wallpapers"
MONITOR="eDP-1"
INTERVAL=30

# Get a list of all wallpaper files in the directory
WALLPAPERS=("$WALLPAPER_DIR"/*)

# Start cycling through wallpapers
while true; do
    for WALLPAPER in "${WALLPAPERS[@]}"; do
        hyprctl hyprpaper wallpaper "$MONITOR","$WALLPAPER"
        sleep "$INTERVAL"
    done
done
