files=(/home/locke/media/bg/*)
bg="${files[RANDOM % ${#files[@]}]}"
feh --bg-fill $bg
