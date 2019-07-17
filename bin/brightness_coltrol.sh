#!/bin/sh
# brightness_control.sh - controls brightness using light and outputs notification via dunst

# change brightness
if [[ $1 =~ "+" ]]; then
    light -A ${1%*+}
else
    light -U ${1%*+}
fi

# get brightness status from light (and make it a whole number)
brightness="$(printf "%.0f\n" $(light -G))"

# arbitrary (but unique) message ID so it overwrites properly
msg_id="76493"

# show proper notification
dunstify -a "brightness_control.sh" -u low  -r "$msg_id" \
"brightness: ${brightness}%" \
"$(~/bin/progressbar.sh $brightness)"
