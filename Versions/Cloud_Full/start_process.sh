# Objective -  Start Telnet Service and all cloud services

# Start the telnet service
busybox telnetd &
# Move the Factory folder so the cloud services don't go into developer / limp mode
mv /var/tmp/sd/Factory /var/tmp/sd/Factory.done

# Ensure we're working from the Yi directory
cd /home/app

# Load the GPIO driver such as PTZ, IR Cut and ADC sensors
./load_cpld_ssp

# Load the messaging queue service and its pipes
./dispatch &

./cloud &
./p2p_tnp &
./mp4record &
./oss &

# Load the stream service
./rmm &

# Start the watchdog services that will restart services and/or the camera on a closed service
./watch_process &
watchdog -t 2 -T 5 /dev/watchdog &

