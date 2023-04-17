#!/bin/bash
# Install xmodmap and xbindkey
sudo pacman -s xorg-xmodmap xbindkey
# Add xmodmap and xbindkey config files to home
cp ./.Xmodmap ./.xbindkeysrc ~/
# Add xmodmap keys
xmodmap ~/.Xmodmap
# Add xbindkeys keys command to /etc/lightdm/Xsession
