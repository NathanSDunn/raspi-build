#!/bin/bash
#  raspi-build - Shell scripts for initializing Raspberry Pi 
#  in a variety of configurations 
# 
#  (c) Copyright 2013  Nathan Dunn (nathan.dunn@UNSWalumni.com)
# 
#  raspi-build homepage: https://github.com/NathanSDunn/raspi-build
sudo chmod +x *.sh	

#run Raspbian install scripts
sudo chmod +x ./Raspbian/*.sh
./Raspbian/install.sh

#run XBMC install scripts
sudo chmod +x ../common/XBMC/*.sh
../common/XBMC/install.sh