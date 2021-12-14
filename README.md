# Solves the tethering problem for some operators
## Just run setup.bat and restart your computer
### Note that this script only hides the computer on which the patch was installed. If any other unhidden device is connected, the operator will see it

### How it remove ?
To uninstall, run setup.bat again

### How does it work ?
TTL is a parameter that decreases by 1 when information passes through any device.

The standard TTL of the smartphone is 64.

Standard TTL of the Computer is 128.

The script changes 128 to 65.

When the signal is transferred from the PC to the phone, the value decreases by 1 and becomes equal to 64.

After that, the traffic from the phone and the PC merges into one.

If the patch was previously installed, it is removed.


### Can this negatively affect my device?
Changing the TTL can **NOT** damage your modem or network card.
The main thing that can cause this fix is the lack of Internet when connected, for example, through a network of 60 or more routers connected in series.
To fix this, just run setup.bat again to uninstall the patch


### Why not change the TTL on smartphone to connect any devices ?
Unfortunately, this requires root privileges, so without modifying the smartphone's firmware, you will not be able to fix it.

Note that changing the firmware may reduce security, and if something goes wrong, the device may stop turning on!
