#!/bin/bash
# Install light cli tool
sudo pacman -S light
# Add my user to video group
sudo usermod -aG video brunopec
# Add light keybindings with xbindkey (~/.xbindkeysrc)
