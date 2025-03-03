#!/bin/bash
# Install xmodmap and xbindkey
sudo pacman -s xorg-xmodmap xbindkey
# Add xmodmap and xbindkey config files to home
cp ./.Xmodmap ./.xbindkeysrc ~/
# Set layout to us, variant altgr-intl
# This command will persist the configuration in /etc/X11/xorg.conf.d/00-keyboard.conf
localectl --no-convert set-x11-keymap us us altgr-intl
# Add xbindkeys keys command to /etc/lightdm/Xsession
# You use arrows with caps + ijkl key remapping
