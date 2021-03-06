#Raspbian desktop linux machine configuration
## Quickstart installation (Windows)
1. Download the most recent Raspbian image from [RaspberryPi.org](http://www.raspberrypi.org/downloads) for a desktop PC config
2. Use [Win32DiskImager](http://sourceforge.net/projects/win32diskimager/) to install the image to a SanDisk 2,4,8, or 16 GB Flash card (Class 6 SDHC recommended for higher random read/write speeds and compatibility - see [this article](http://www.ardamis.com/2012/07/18/finding-a-fast-sd-card-for-the-raspberry-pi/) on Raspi SD card [benchmarks](http://www.raspberrypi.org/phpBB3/viewtopic.php?f=63&t=4076&start=75))
3. Insert the card into your Pi, connect it to your TV or monitor via HDMI, plug in a keyboard, connect it to the internet via ethernet or a wi-fi dongle, and boot it up. *Note: for maximum performance you should connect any USB devices to your Pi via a powered USB hub.*
4. Log in with 

    `username:pi` and
    `password:raspberry`

5. Use the install interface to turn on `ssh`, `expand_rootfs`, and turn off `boot_behaviour` show desktop on boot (select no - dont worry you can boot into the gui by typing `startx` later if you want to use it directly)
6. Run `ifconfig` on your pi to get the IP (something like `inet addr:192.168.1.220`) and MAC address (something like `HWaddr 00:14:6c:61:37:61`) assigned to your network interface (`eth0` for ethernet, `wlan0` for wi-fi). You can then ssh to your pi by connecting to it's IP address on your local network, or better yet setting a static IP in your router to assign an IP of your choice  

##Set up your windows machine to remotely connect to your pi
1. [Download](http://the.earth.li/~sgtatham/putty/latest/x86/putty-0.62-installer.exe) and install [PuTTY](http://www.chiark.greenend.org.uk/~sgtatham/putty/)
2. [Download](http://sourceforge.net/projects/xming/files/latest/download) and install [Xming](http://www.straightrunning.com/XmingNotes/)
3. Load up PuTTY and enter `[username]@[Your Pi's IP Address]` into the "HostName (or IP address)".
4. Set up X11 forwarding in PuTTY by following [this guide](http://www.math.umn.edu/systems_guide/putty_xwin32.html).
5. Save your connection profile and "Open" the connection
6. *Optionally* start the Raspbian window manager with `lxsession` once logged in to your Pi.
