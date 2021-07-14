# Enable Telnet and access root on any Yi camera device
**Important:** You'll **at least** 2GB Micro SD card formatted with a FAT32 partition.
The device checks the size of the SD card and won't mount when it's detected too small in size.

Copy the Factory folder to the root of your SD card and select a payload version by copying the "start_process.sh" (and wpa_supplicant.conf if using the WiFi trick) into the Factory folder.

There are two telnet payloads available and a backup script:

 1. Cloud_Full
 > All services are operational but with the telnet service running.
 > Note: The "Factory" folder will be renamed to "Factory.done" when complete as the Yi services check this folder.
 >  If the Yi services find this folder, they won't connect to the cloud.
 > Therefore we have to rename it. You'll need to rename the folder back to "Factory" for it to work on the next reboot
 2. No_Cloud_Connect_To_Wifi
 > This version will enable Telnet on the device and completely disable the Yi services from starting. There is also the ability to configure the WiFi, here you can connect new devices that haven't been registered with Yi and completely avoid the onboarding process on new devices
3. Backup_Firmware
> Copy the Factory folder to the root of your SD and a full flash dump will be taken from the camera on boot and stored on the SD card.
> **I didn't write this script**, it was taken from another repository. I'll credit the original author once I find the source.

There is no root password required on connecting.

This method doesn't write anything to the camera's flash memory and will be disabled by removing the SD Card.

I've used this method to help me build an RTSP service for the Realtek based (RTS3903N) which I'll be releasing in early alpha stage soon.


**Important: Ensure all .sh scripts and executable (chmod +x script.sh)**

