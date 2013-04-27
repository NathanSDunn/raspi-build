#!/bin/bash
#  raspi-build - Shell scripts for initializing Raspberry Pi 
#  in a variety of configurations 
# 
#  (c) Copyright 2013  Nathan Dunn (nathan.dunn@UNSWalumni.com)
# 
#  raspi-build homepage: https://github.com/NathanSDunn/raspi-build

sudo apt-get install -y x11-apps
startx &
lxsession &