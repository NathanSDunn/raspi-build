#!/bin/bash
#  Raspi-Shell - Shell scripts for initializing Raspberry Pi 
#  in a variety of configurations 
# 
#  (c) Copyright 2013  Nathan Dunn (nathan.dunn@UNSWalumni.com)
# 
#  Raspi-config homepage: https://github.com/NathanSDunn/Raspi-Shell

sudo apt-get install -y x11-apps
startx &
lxsession &