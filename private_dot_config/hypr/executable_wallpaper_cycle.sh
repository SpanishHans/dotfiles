#!/bin/bash

# Path to your wallpapers directory
WALLPAPER_DIR="$HOME/.config/hypr/wallpapers"
MONITOR="eDP-1"  # Replace with your monitor name from `hyprctl monitors`
INTERVAL=30     # Time (in seconds) to wait before switching wallpaper

# Get a list of all wallpaper files in the directory
WALLPAPERS=("$WALLPAPER_DIR"/*)

# Start cycling through wallpapers
while true; do
    for WALLPAPER in "${WALLPAPERS[@]}"; do
        # Set the wallpaper for the specified monitor
        hyprctl hyprpaper wallpaper "$MONITOR","$WALLPAPER"
        sleep "$INTERVAL"
    done
done
