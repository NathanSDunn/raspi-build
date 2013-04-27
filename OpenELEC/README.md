#Raspi-Shell

##Raspberry Pi Quickstart installation

###OpenELEC XBMC/HTPC personal media centre (Windows)
1. Download the most recent OpenELEC image from [OpenELEC](http://openelec.tv/get-openelec/download/viewcategory/10-raspberry-pi-builds) or an XBMC media centre
2. Install the image with one of the following options .Note: for best results use a SanDisk 2,4,8, or 16 GB SDHC Flash card (Class 6 recommended for higher random read/write speeds - see [this article](http://www.ardamis.com/2012/07/18/finding-a-fast-sd-card-for-the-raspberry-pi/) on Raspi SD card [benchmarks](http://www.raspberrypi.org/phpBB3/viewtopic.php?f=63&t=4076&start=75))
3. (Option 1) Boot up your favorite version of Linux (Inside a virtual machine is fine if you have an external SD card reader) and follow the [install guide](http://wiki.openelec.tv/index.php?title=Installing_OpenELEC_on_Raspberry_Pi#Creating_the_SD_Card)
4. (Option 2) Alternatively (easier) use [BerryBoot](http://www.berryterminal.com/doku.php/berryboot) to create a multi-boot SD card and use the supplied OpenELEC image

3. Insert the card into your Pi, connect it to your TV or monitor via HDMI, plug in a keyboard, connect it to the internet via ethernet or a wi-fi dongle, and boot it up. *Note: for maximum performance you should connect any USB devices to your Pi via a powered USB hub.
4. Go to the rightmost menu (settings) and select the OpenELEC submenu, configuring as follows
5. SYSTEM - turn on automatic update
6. NETWORK - turn on WLAN and wlan0 for wi-fi (or leave it as eth0 for ethernet) and configure a static IP for your Pi and set it under network settings. Set your router as gateway and primary DNS, 8.8.8.8 as secondary DNS, and 8.8.4.4 as teritary DNS. Fill in the SSID, security method (usually WPA2), and password
7. SERVICES - turn on samba, start ssh at boot, start crond at boot
8. SSH to your Pi and log in with 

     `username:root` and
     `password:openelec`

9. Note: You can also connect to your Pi over the windows network by typing `\\[Your Pi's IP Address]\` into the explorer bar.

##Set up your windows machine to remotely connect to your pi
1. [Download](http://the.earth.li/~sgtatham/putty/latest/x86/putty-0.62-installer.exe) and install [PuTTY](http://www.chiark.greenend.org.uk/~sgtatham/putty/)
2. [Download](http://sourceforge.net/projects/xming/files/latest/download) and install [Xming](http://www.straightrunning.com/XmingNotes/)
3. Load up PuTTY and enter `[username]@[Your Pi's IP Address]` into the "HostName (or IP address)".
4. Set up X11 forwarding in PuTTY by following [this guide](http://www.math.umn.edu/systems_guide/putty_xwin32.html).
5. Save your connection profile and "Open" the connection
6. *Optionally* start the Raspbian window manager with `lxsession` once logged in to your Pi.

##Shell scripts for configuring the RaspberryPi

### General install/setup
The `./install.sh` script will load your Pi with a few handy tools useful for working with the other scripts, update your firmware, and create an RSA key pair for connecting to other machines. It can be run by entering the following commands.

    sudo apt-get install -y git-core
    git clone --depth=0 https://github.com/NathanSDunn/Raspi-Shell.git
    ./install.sh

### XBMC/HTPC (Use the OpenELEC image)
The `./XBMC.sh` script will download and configure python, SickBeard (Pirate Bay), Couch Potato, uTorrent, SpotiMC, GrooveShark, and the Metropolis Skin for your viewing pleasure. Logins for their web interfaces will be set to `username:root` `password:openelec`

* Install some patch to fix network dropout issues
* Overclock the Pi
* Install Python (apt-get)
* TV shows can be managed with [SickBeard](http://sickbeard.com/), which can also be configured to work with .torrents with [this guide](http://htpc.blogg.no/1319145977_sickbeared__torrents_.html) or alternatively  using the [PirateBay version](https://github.com/mr-orange/Sick-Beard) with [this guide](http://sickbeard.com/forums/viewtopic.php?f=9&t=6605).
* Movies can be managed with [Couch Potato](https://github.com/RuudBurger/CouchPotatoServer)
* uTorrent can be used to tie the lot in together and automatically download your favorite shows
* SpotiMC can be used to stream your music from the cloud 320kbps in mp3 audio with a premium account or alternatively GrooveShark if you prefer a free, but less awesome client. (both are XBMC addons).

#### Web interfaces
* Sickbeard http://`[Your Pi's IP Address]`:8081
* uTorrent http://`[Your Pi's IP Address]`:8082
* Couch Potato http://`[Your Pi's IP Address]`:5050

### Emulation
Run the script with `./emulation.sh` to set up RetroPie

