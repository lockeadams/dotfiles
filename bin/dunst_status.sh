#!/bin/sh
# dunst_status.sh - outputs dunst notification with status information

# get date info
date="$(date '+%A, %b %d - %I:%M %p')"

# get battery info
bat_cap="$(cat /sys/class/power_supply/BAT1/capacity)"
bat_status="$(cat /sys/class/power_supply/BAT1/status | awk '{print tolower($0)}')"

# arbitrary (but unique) message ID so it overwrites properly
msg_id="76494"

# output notification
dunstify -a "dunst_status.sh" -u normal -r "$msg_id" \
"${date}" \
"bat: ${bat_cap}%, ${bat_status}"
