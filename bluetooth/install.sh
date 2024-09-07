#!/bin/bash
# Install bluetooth dependencies
sudo pacman -S bluez bluez-utils
# Activate bluetooth kernel module
sudo modprobe btusb
# Enable bluetooth service
sudo systemctl enable --now bluetooth
# Use blutoothctl to pair and connecto to device
# [bluetooth] default-agent
# [bluetooth] power on
# [bluetooth] scan on
# [bluetooth] pait [DEVICE]
# [bluetooth] connect [DEVICE]
# [bluetooth] trust [Device]
# Uncomment "#AutoEnable=false" in /etc/bluetooth/main.conf

# Auto-connect
# Install bluetooth-autoconnect [https://github.com/jrouleau/bluetooth-autoconnect]
yay -S bluetooth-autoconnect
bluetooth-auconnect 

