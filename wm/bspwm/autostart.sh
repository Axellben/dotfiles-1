#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

#Find out your monitor name with xrandr or arandr (save and you get this line)
#xrandr --output VGA-1 --primary --mode 1360x768 --pos 0x0 --rotate normal
#xrandr --output DP2 --primary --mode 1920x1080 --rate 60.00 --output LVDS1 --off &
#xrandr --output LVDS1 --mode 1366x768 --output DP3 --mode 1920x1080 --right-of LVDS1
#xrandr --output HDMI2 --mode 1920x1080 --pos 1920x0 --rotate normal --output HDMI1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output VIRTUAL1 --off

#run polybar
$HOME/.config/polybar/launch.sh &

#change your keyboard if you need it
setxkbmap ch -model macbook79 -option 'nbsp:none'

#Some ways to set your wallpaper besides variety or nitrogen
#feh --bg-scale ~/.config/bspwm/wall.png &
#feh --bg-fill /usr/share/backgrounds/arch_logo.png &
#feh --randomize --bg-fill ~/Dropbox/Apps/Desktoppr/*

# Set wallpaper with nitrogen

# Dark: ~/.local/share/wallpapers/arch.png
nitrogen ~/.local/share/wallpapers/checkrain_dark_white.png --set-scaled

# start dunst for notifs
run dunst -conf ~/.config/dunst/dunstrc

xsetroot -cursor_name left_ptr &
sxhkd -c ~/.config/bspwm/sxhkd/sxhkdrc &

# start mpd
# mpd --no-daemon --stdout

# Tray

# network applet
# nm-applet &

# bluetooth
# blueman-tray &

# battery
# cbatticon &

# pulseaudio
# pasystray &

#run xfce4-power-manager &
picom --config $HOME/.config/bspwm/picom.conf &
#/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
#/usr/lib/xfce4/notifyd/xfce4-notifyd &

#nitrogen --restore &
#run caffeine &
#run vivaldi-stable &
#run firefox &
#run thunar &
#run dropbox &
#run insync start &
#run discord &
#run spotify &
#run atom &
