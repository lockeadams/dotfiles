#!/bin/sh
# randbg.sh - sets random background using feh

files=(/home/locke/media/bg/*)
bg="${files[RANDOM % ${#files[@]}]}"
feh --bg-fill $bg --no-fehbg
