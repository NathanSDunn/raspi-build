#!/bin/bash
#  Raspi-Shell - Shell scripts for initializing Raspberry Pi 
#  in a variety of configurations 
# 
#  (c) Copyright 2013  Nathan Dunn (nathan.dunn@UNSWalumni.com)
# 
#  Raspi-config homepage: https://github.com/NathanSDunn/Raspi-Shell
sudo chmod 775 *.sh
#TODO checks for last update/upgrade
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y git-core git gitk dialog locate ntpdate
sudo apt-get autoclean
#update locate search database
#sudo updatedb

#update time settings
sudo ntpdate -u ntp.ubuntu.com

# trust GitHub's SSL certificates
sudo apt-get install ca-certificates

# Hexxeh Firmware updates
sudo wget http://goo.gl/1BOfJ -O /usr/bin/rpi-update && sudo chmod +x /usr/bin/rpi-update
sudo rpi-update

#create a public/private rsa key pair
#@todo check if file exists
#mkdir ~/.ssh
#ssh-keygen -f ~/.ssh/id_rsa