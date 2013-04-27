#Raspi-Shell

##Raspberry Pi Quickstart installation
Follow the instructions in the README.md file appropriate for your distro/image

### Recommended Images
#### Desktop Linux / general 
* Raspbian - A very quick, lean, and user friendly distribution for this purpose and supports many common things you will need out of the box.

#### XBMC/Media Centre
* OpenELEC - A very clean, intuitive image. However at present it seems to drop network connections randomly, requiring a reboot (Unacceptable for an always on media centre. Am working on a fix for this.)
* RaspBMC - A media centre developed specifically for the Raspberry Pi

#### Emulation/Gaming
* Chameleon - supposed to be great for this however have not yet tested.

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

### XBMC/HTPC (Use the OpenELEC image) - TODO
The `./XBMC.sh` script will download and configure python, SickBeard (Pirate Bay), Couch Potato, uTorrent, SpotiMC, GrooveShark, and the Metropolis Skin for your viewing pleasure. Logins for their web interfaces will be set to `username:root` `password:openelec`

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

