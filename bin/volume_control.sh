#!/bin/sh
# volume_control.sh - controls volume using amixer and outputs notification via dunst

# change volume
if [ $1 == 'mute' ]; then
    amixer set Master toggle
else
    amixer set Master $1
fi

# get volume status from amixer
volume="$(amixer -c 0 get Master | tail -1 | awk '{print $4}' | sed 's/[^0-9]*//g')"
mute="$(amixer -c 0 get Master | tail -1 | awk '{print $6}' | sed 's/[^a-z]*//g')"

# arbitrary (but unique) message ID so it overwrites properly
msg_id="76491"

# show proper notification
if [ $volume == 0 -o "$mute" == "off" ]; then
    dunstify -a "audio_control.sh" -u low -r "$msg_id" "vol: muted"
else
    dunstify -a "audio_control.sh" -u low  -r "$msg_id" \
    "vol: ${volume}%" \
    "$(~/bin/progressbar.sh $volume)"
fi
