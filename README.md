#raspi-build
This is a collection of scripts to download, configure, and build scripts, sources, and files for a variety of Raspberry Pi configurations

##Raspberry Pi Quickstart installation
Follow the instructions in the README.md file appropriate for your distro/image

### Recommended Images
#### Desktop Linux / general 
* [Raspbian](http://www.raspbian.org/) - A very quick, lean, and user friendly GNU/Linux desktop environment optimised for the Raspberry Pi hardware.

#### XBMC/Media Centre
* [RaspBMC](http://www.raspbmc.com/) - An XBMC media centre based on [Raspbian](http://www.raspbian.org/) and developed specifically for the Raspberry Pi. Can be installed by writing a pre-prepared image to an SD card or as a network install. It also automatically upgrades itself on boot as new updates become available. 
* [OpenELEC](http://openelec.tv/) - A very clean, easy to install (via [BerryBoot](http://www.berryterminal.com/doku.php/berryboot)) intuitive distribution. Seems to run [slightly quicker](http://www.youtube.com/watch?v=bYfU7v_FO6U) than RaspBMC for most operations.
* *Note: Both of these images seem to randomly drop wi-fi connections until rebooted at times. Might just be my wi-fi dongle but there is a [script available to auto-reconnect](https://github.com/meinside/raspiconfigs/blob/master/cron/wlan_check.sh) that you may want to take a look at if this is an issue.*

#### Emulation/Gaming
* [ChameleonPi](http://chameleon.enging.com/) - supposed to be great for this however have not yet tested.

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

### XBMC/HTPC (Use the RaspBMC or OpenELEC image) - TODO
The `./XBMC.sh` script will download and configure python, SickBeard (Pirate Bay), Couch Potato, uTorrent, SpotiMC, GrooveShark, and the Metropolis Skin for your viewing pleasure. Logins for their web interfaces will be set to `username:root` `password:openelec`

* Install Python (apt-get)
* TV shows can be managed with [SickBeard](http://sickbeard.com/), which can also be configured to work with .torrents with [this guide](http://htpc.blogg.no/1319145977_sickbeared__torrents_.html) or alternatively  using the [PirateBay version](https://github.com/mr-orange/Sick-Beard) with [this guide](http://sickbeard.com/forums/viewtopic.php?f=9&t=6605).
* Movies can be managed with [Couch Potato](https://github.com/RuudBurger/CouchPotatoServer)
* uTorrent can be used to tie the lot in together and automatically download your favorite shows
* SpotiMC can be used to stream your music from the cloud 320kbps in mp3 audio with a premium account or alternatively GrooveShark if you prefer a free, but less awesome client. (both are XBMC addons).
* [Automount new drives](https://github.com/kopfkino/raspi-config) when added and search with SickBeard/Couch Potato

#### Web interfaces
* Sickbeard http://`[Your Pi's IP Address]`:8081
* uTorrent http://`[Your Pi's IP Address]`:8082
* Couch Potato http://`[Your Pi's IP Address]`:5050

### Emulation
Run the script with `./emulation.sh` to set up RetroPie

## General Notes
### Power supplies
Most problems with your Pi randomly shutting down can be attributed to a [weak power supply](http://forum.stmlabs.com/showthread.php?tid=3918). Unfortunately many power supplies that state 1A on the label do not actually supply 1A in practice. 

For best results power your Pi with one of the new iPad 4 USB power supplies (2.4A max), or a good quality USB hub powered by a 4A+ power supply. You can use the same hub that you plug all your power hungry USB devices (such as wi-fi adapters), which also means you will only need one power plug for the whole setup!

### SD cards
Whilst class 10 cards are quick and reliable for large sequential writes performed by digital cameras and video recorders, many have incredibly slow random read/write access (which is important for database queries and OS performance on a Pi). 

Class 6 SDHC SanDisk cards have been proven to have very good random read/write speeds and compatibility with the Pi (although the Ultra and Extreme models can sometimes be too fast for the little Pi's bus to handle. See [this article](http://www.ardamis.com/2012/07/18/finding-a-fast-sd-card-for-the-raspberry-pi/) on Raspi SD card [benchmarks](http://www.raspberrypi.org/phpBB3/viewtopic.php?f=63&t=4076&start=75)) for further information.

### Overclocking
You can get a much faster performance by overclocking your Pi. This can be done through Raspbian's `raspi-config` tool. Or by manually editing `config.txt` in the root directory. *Buyer beware: some of the higher clock speeds and `over_voltage` settings can cause SD card corruption, and setting `over_voltage` > 6 will void your warranty.* The settings I prefer are:

    gpu_freq=250
    core_freq=500
    arm_freq=1000
    sdram_freq=600
    gpu_mem=128
    over_voltage=6

That being said, your mileage may vary and not all Pi's are built equal. You can experiment with your own overclock settings to come up with a stability, speed, and reliability factor to your liking.

### Decoding MPEG-2 and VC-1 media formats
In order to minimise costs, stock standard Raspberry Pi's are not licensed to decode MPEG-2 or VC-1 media formats. However, if you would like to be able to work with these files you can purchase a license for [MPEG-2](http://www.raspberrypi.com/mpeg-2-license-key/)(£2.00) or [VC-1](http://www.raspberrypi.com/vc-1-license-key/)(£1.00) decoding ability, which will be associated with your Pi's serial number. Once you have your keys you can add them to config.txt. For example if your key is `0x12345678` you will need to add:

    decode_MPG2=0x12345678
    decode_WVC1=0x12345678

### Backing up
[Win32DiskImager](http://sourceforge.net/projects/win32diskimager/) can be used both to `write` pre-built images to an SD card, or `read` an SD card to create your own pre-built image from an existing filesystem. It is strongly advised to back up your SD card once you are happy with your configuration, which will allow your to re-image the card should it become corrupted (or if you want to replicate your setup on another Pi.)
