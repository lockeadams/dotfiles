#!/bin/sh
# dunst_status.sh - outputs dunst notification with status information

# get date info
date="$(date '+%A, %B %d - %I:%M %p')"

# get battery info
bat_cap="$(cat /sys/class/power_supply/BAT1/capacity)"
bat_status="$(cat /sys/class/power_supply/BAT1/status | awk '{print tolower($0)}')"

# get workspace info
current_ws="$(( $(xprop -root _NET_CURRENT_DESKTOP | awk '{print $3}') + 1))"
total_ws="$(xprop -root _NET_NUMBER_OF_DESKTOPS | awk '{print $3}')"

# arbitrary (but unique) message ID so it overwrites properly
msg_id="76494"

# output notification
dunstify -a "dunst_status.sh" -u normal -r "$msg_id" \
"${date}" \
"bat: ${bat_cap}%, ${bat_status} \n\
on workspace ${current_ws} of ${total_ws}"
