#!/bin/bash

while true; do
    # Get the current date and time (up to minutes)
    datetime=$(date +'%Y-%m-%d %I:%M %p')
    
    # Get battery capacity
    battery_path="/sys/class/power_supply/BAT0/capacity"
    if [ -f "$battery_path" ]; then
        capacity=$(cat $battery_path)
        battery="Battery: $capacity%"
    else
        battery="Battery: N/A"
    fi

    # Output the date (up to minutes) and battery status
    echo "$datetime | $battery"
    
    # Wait for a while (e.g., 30 seconds)
    sleep 30
done

