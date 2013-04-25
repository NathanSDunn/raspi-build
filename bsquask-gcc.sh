#!/bin/bash
#  Raspi-Shell - Shell scripts for initializing Raspberry Pi 
#  in a variety of configurations 
# 
#  (c) Copyright 2013  Nathan Dunn (nathan.dunn@UNSWalumni.com)
# 
#  Raspi-config homepage: https://github.com/NathanSDunn/Raspi-Shell

# *****************************************************************************
# setup RaspBerryPi-BuildRoot
# *****************************************************************************
# RaspberryPi-Buildroot (aka the Bsquask SDK)
# The objective of this project is to provide an SDK and root file system for
# the Raspberry Pi that is lightweight and takes full advantage of the
# hardware available. The resulting image produced is small Linux distribution
# known as Bsquask.
#
# The Bsquask SDK provides a GCC 4.6.3 toolchain for building armv6 binaries 
# with the hard-float ABI, as well as bootloaders, kernel image, rootfs, and 
# development sysroot for the Raspberry Pi.
git clone --depth=0 git://github.com/nezticle/RaspberryPi-BuildRoot.git BuildRoot