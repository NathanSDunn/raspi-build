#!/bin/bash
#  Raspi-Shell - Shell scripts for initializing Raspberry Pi 
#  in a variety of configurations 
# 
#  (c) Copyright 2013  Nathan Dunn (nathan.dunn@UNSWalumni.com)
# 
#  Raspi-config homepage: https://github.com/NathanSDunn/Raspi-Shell
sudo chmod 775 *.sh
sudo apt-get update
sudo apt-get upgrade -y
supt apt-get install -y git-core git dialog

#update time settings
sudo apt-get install ntpdate
sudo ntpdate -u ntp.ubuntu.com

# trust GitHub's SSL certificates
sudo apt-get install ca-certificates

# Hexxeh Firmware updates
sudo wget http://goo.gl/1BOfJ -O /usr/bin/rpi-update && sudo chmod +x /usr/bin/rpi-update
sudo rpi-update