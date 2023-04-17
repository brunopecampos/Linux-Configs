#!/bin/bash
# Install screen modifier
sudo pacman -S xorg-xrandr
# Install screen profile maanger
sudo pacman -S autorandr
# Save configuration wit only laptop
autorandr --save laptop
# Connect second screen and modify screen configs
xrandr --output HDMI-1 --mode 1920x1080 --pos 0x0 --rotate normal --primary --output eDP-1 --mode 1920x1080 --pos 0x1080 --rotate normal
# Save home config
autorandr --save home
# Add a line with "autorandr --change" to /etc/lightdm/Xsession file to initiate autorandr after the LightDM.
