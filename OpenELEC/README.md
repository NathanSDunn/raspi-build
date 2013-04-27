#OpenELEC XBMC/HTPC personal media centre 

## Quickstart installation (Windows)

1. Download [BerryBoot](http://www.berryterminal.com/doku.php/berryboot) and copy the files on to a FAT32 formatted SanDisk 2,4,8, or 16 GB SDHC Flash card (Class 6 recommended for higher random read/write speeds - see [this article](http://www.ardamis.com/2012/07/18/finding-a-fast-sd-card-for-the-raspberry-pi/) on Raspi SD card [benchmarks](http://www.raspberrypi.org/phpBB3/viewtopic.php?f=63&t=4076&start=75))
3. Insert the card into your Pi, connect it to your TV or monitor via HDMI, plug in a keyboard, connect it to the internet via ethernet or a wi-fi dongle, and boot it up. *Note: for maximum performance you should connect any USB devices to your Pi via a powered USB hub.
3. Configure BerryBoot (Disable overscan=0 for TVs) and select OpenELEC when prompted to install an image. Once installed, set it as default and reboot your Pi.
4. Once OpenELEC has booted, go to the rightmost menu (settings) and select the OpenELEC submenu, configuring as follows
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