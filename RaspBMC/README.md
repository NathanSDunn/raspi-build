#RaspBMC XBMC/HTPC personal media centre configuration
## Quickstart setup
1. Use the [automated installer](http://www.raspbmc.com/download/) from RaspBMC or alternatively download the most recent network image and use [Win32DiskImager](http://sourceforge.net/projects/win32diskimager/) to install the image to a SanDisk 2,4,8, or 16 GB Flash card (Class 6 SDHC recommended for higher random read/write speeds and compatibility - see [this article](http://www.ardamis.com/2012/07/18/finding-a-fast-sd-card-for-the-raspberry-pi/) on Raspi SD card [benchmarks](http://www.raspberrypi.org/phpBB3/viewtopic.php?f=63&t=4076&start=75))
3. Insert the card into your Pi, connect it to your TV or monitor via HDMI, plug in a keyboard, connect it to the internet via ethernet or a wi-fi dongle, and boot it up. *Note: for maximum performance you should connect any USB devices to your Pi via a powered USB hub.*
4. Select your Language
5. Go to the second from right menu (Programs) and select RaspBMC settings, configuring as follows
6. NETWORK CONFIGURATION - Network Mode select WIFI or Ethernet. Change the WIFI SSID to the name of your router and enter the correct password.
7. SYSTEM CONFIGURATION - set System Performance Profile to Super.
8. Reboot your Pi, and select 'Yes' when prompted to update your config.txt. If RaspBMC is out of date it should automatically update itself once an internet connection is detected.
9. SSH to your Pi and log in with 

     `username:pi` and
     `password:raspberry`

10. The first time you SSH in RaspBMC will ask you to set your locale - I recommend NOT selecting 'all locales' - takes ages install them all and wastes space on your Pi.
10. Note: You can also connect to your Pi over the windows network by typing `\\[Your Pi's IP Address]\` into the explorer bar. If samba is enabled you will see two directories by default
* devices - assuming this points to `/media/`
* pi - points to `/home/pi/`


##Set up your windows machine to remotely connect to your pi
1. [Download](http://the.earth.li/~sgtatham/putty/latest/x86/putty-0.62-installer.exe) and install [PuTTY](http://www.chiark.greenend.org.uk/~sgtatham/putty/)
2. [Download](http://sourceforge.net/projects/xming/files/latest/download) and install [Xming](http://www.straightrunning.com/XmingNotes/)
3. Load up PuTTY and enter `[username]@[Your Pi's IP Address]` into the "HostName (or IP address)".
4. Set up X11 forwarding in PuTTY by following [this guide](http://www.math.umn.edu/systems_guide/putty_xwin32.html).
5. Save your connection profile and "Open" the connection

