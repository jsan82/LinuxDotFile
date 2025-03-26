#!/usr/bin/env bash

# Add this script to your wm startup file.

DIR="$HOME/.config/polybar/forest"

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch the bar for eDP-1
polybar -q main -c "$DIR"/config.ini &

# Launch the bar for HDMI-1 if connected
if [[ $(xrandr -q | grep 'HDMI-1 connected') ]]; then
    polybar -q top2 -c "$DIR"/config.ini &
fi
