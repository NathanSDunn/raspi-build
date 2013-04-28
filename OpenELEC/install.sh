#!/bin/bash
#  raspi-build - Shell scripts for initializing Raspberry Pi 
#  in a variety of configurations 
# 
#  (c) Copyright 2013  Nathan Dunn (nathan.dunn@UNSWalumni.com)
# 
#  raspi-build homepage: https://github.com/NathanSDunn/raspi-build
sudo chmod +x *.sh	
sudo chmod +x ../common/XBMC/*.sh
../common/XBMC/install.sh

#Note overclock is managed by core - super is
#/boot/config.txt
#arm_freq=950
#core_freq=450
#isp_freq=450
#sdram_freq=450
#over_voltage=6
#disable_overscan=0
#gpu_mem=128
#start_file=start_x.elf
#fixup_file=fixup_x.dat

# add codec licenses
# decode_MPG2=0x637f25f
# decode_WVC1=0x903bd43d

# add for tv's:
# disable_overscan=0

