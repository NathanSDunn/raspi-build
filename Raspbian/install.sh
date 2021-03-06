#!/bin/bash
#  raspi-build - Shell scripts for initializing Raspberry Pi 
#  in a variety of configurations 
# 
#  (c) Copyright 2013  Nathan Dunn (nathan.dunn@UNSWalumni.com)
# 
#  raspi-build homepage: https://github.com/NathanSDunn/raspi-build
sudo chmod +x *.sh
#TODO checks for last update/upgrade
#TODO export raspi-build directory
#TODO improve UI
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y git dialog locate ntpdate
sudo apt-get autoclean

#update locate search database
sudo updatedb

#update time settings
sudo ntpdate -u ntp.ubuntu.com

# trust GitHub's SSL certificates
sudo apt-get install ca-certificates

# Hexxeh Firmware updates
# TODO check if file exists
sudo wget http://goo.gl/1BOfJ -O /usr/bin/rpi-update && sudo chmod +x /usr/bin/rpi-update
sudo rpi-update

# create a public/private rsa key pair
# TODO check if file exists
# mkdir ~/.ssh
# ssh-keygen -f ~/.ssh/id_rsa
# TODO import public keys/authorized_keys

# TODO create daily cronjobs for updatedb, firmware updates, apt-get updates, raspi-build updates