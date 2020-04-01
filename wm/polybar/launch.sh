#!/bin/bash

# Kill other instances
killall -q polybar

# Wait for processes to shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch the bar

# bspwm

polybar all -r -c ~/dotfiles/wm/polybar/topbar.ini 
#polybar ws -r -c ~/.config/polybar/floating.ini &
#polybar system -r -c ~/.config/polybar/floating.ini &
#polybar music -r -c ~/.config/polybar/floating.ini &
