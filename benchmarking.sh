#!/bin/bash
#  Raspi-Shell - Shell scripts for initializing Raspberry Pi 
#  in a variety of configurations 
# 
#  (c) Copyright 2013  Nathan Dunn (nathan.dunn@UNSWalumni.com)
# 
#  Raspi-config homepage: https://github.com/NathanSDunn/Raspi-Shell

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