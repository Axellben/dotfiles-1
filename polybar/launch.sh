#!/bin/bash

# Kill other instances
killall -q polybar

# Wait for processes to shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch the bar

# openbox

#polybar main -c /home/orangefran/.config/polybar/openbox/polybar-2/dark/config.blue &

# bspwm

polybar nord -r -c /home/orangefran/.config/polybar/config_color_basic &
# polybar example -r -c /home/orangefran/.config/polybar/i3/config_basic &
