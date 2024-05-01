#!/bin/bash

# Set the X11 display
export DISPLAY=:0

# Set the D-Bus session bus address
export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/$(id -u)/bus


# Set the threshold temperature
threshold=53

# Get the average CPU temperature
avg_temp=$(sensors | grep 'Core' | awk '{print $3}' | awk -F '[+°]' '{print $2}' | awk '{ sum += $1 } END { if (NR > 0) print sum / NR }')

# Check if the average temperature exceeds the threshold
if (( $(echo "$avg_temp > $threshold" | bc -l) )); then
    # Send a notification
     /usr/bin/notify-send "CPU Temperature $avg_temp°C > $threshold°C "
fi
