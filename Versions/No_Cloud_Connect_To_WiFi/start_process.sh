# Objective -  Start Telnet Service, kill all Yi services and connect to WiFi

# Start the telnet service
busybox telnetd &

# Kill any Yi related log services
killall log_server

# Play a cooked in audio file to notify of the success (optional)
# /home/app/aacplay /home/app/audio_file/common/warning.aac 1400 &

# If you want to connect to your own WiFi credentials uncomment below

# Connect to configured WiFi using credentials stored on the SD card
#wpa_supplicant -c/var/tmp/sd/Factory/wpa_supplicant.conf -g/tmp/wpa_supplicant-global -Dwext -iwlan0 -B
#
## Wait for the connection
#sleep 10s
#
## Setup the network and wait for it
#udhcpc -i wlan0 -b -s /backup/script/default.script
#sleep 10s
