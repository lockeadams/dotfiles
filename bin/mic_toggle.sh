#!/bin/sh
# mic_toggle.sh - toggles mic and outputs notificatoin via dunst

# toggle mic
amixer set Capture toggle

# get mic status from amixer
mute="$(amixer -c 0 get Capture | tail -1 | awk '{print $7}' | sed 's/[^a-z]*//g')"

# arbitrary (but unique) message ID so it overwrites properly
msg_id="76492"

# show proper notification
if [ $mute == "off" ]; then
    dunstify -a "mic_toggle.sh" -u low -r "$msg_id" "mic: muted"
else
    dunstify -a "mic_toggle.sh" -u low -r "$msg_id" "mic: unmuted"
fi
