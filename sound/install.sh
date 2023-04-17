#!/bin/bash
# Install audio drivers
sudo pacman -S sof-firmware
# Install pipewire and dependencies
sudo pacman -S pipewire wireplumber pipewire-alse pipewire-audio pipewire-jack pipewire-pulse
# Install graphic controller
sudo pacman -S pavucontrol
# Enable services
systemctl --user enable --now pipewire pipewire-pulse wireplumber
# Add sound shortcuts to ~/.xbindkeysrc
