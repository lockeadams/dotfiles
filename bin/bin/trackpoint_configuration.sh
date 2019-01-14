# Changes sensitivity of trackpoint for T430
# Need to edit sudoers to allow this script to be run without password
# Might need to change path for X61

echo -n 125 > /sys/devices/platform/i8042/serio1/serio2/sensitivity
