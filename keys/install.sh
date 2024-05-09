#!/bin/bash
# Install xmodmap and xbindkey
sudo pacman -s xorg-xmodmap xbindkey
# Add xmodmap and xbindkey config files to home
cp ./.Xmodmap ./.xbindkeysrc ./.switchlanguage.sh ~/
# Give execution permition to switch language script
chmod +x ~/.switchlanguage.sh
# Set language to portuguese and then switch to english, loading the xmodmap shortcups through the switchlanguage script
setxkbmap br
~/.switchlanguage.sh
# Add xbindkeys keys command to /etc/lightdm/Xsession
#
#
#
# You can switch between br and us layouts with caps + ijkl key remapping
