#!/bin/bash

# Kill other instances
killall -q polybar

# Wait for processes to shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch the bar

# bspwm

polybar ws -r -c /home/orangefran/.config/polybar/config.ini &
#polybar system -r -c /home/orangefran/.config/polybar/config &
polybar music -r -c /home/orangefran/.config/polybar/config.ini &
