#!/bin/bash
#  raspi-build - Shell scripts for initializing Raspberry Pi 
#  in a variety of configurations 
# 
#  (c) Copyright 2013  Nathan Dunn (nathan.dunn@UNSWalumni.com)
# 
#  raspi-build homepage: https://github.com/NathanSDunn/raspi-build

# *****************************************************************************
# bsquask-gcc
# *****************************************************************************
./bsquask-gcc.sh
# *****************************************************************************
# Setup pistress
# *****************************************************************************
sudo apt-get install -y gcc
git clone --depth=0 git://github.com/bag-man/pistress.git
cd pistress
gcc pistress.c
cd ..

# see http://elinux.org/RPi_Performance

# benchmark SD card, CPU, OS, etc.