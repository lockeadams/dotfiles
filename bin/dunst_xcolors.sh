#!/bin/sh
# dunst_xcolors.sh - starts dunst using X colors

FG=$(xrdb -query | grep foreground)
FG=${FG#*:}
BG=$(xrdb -query | grep background)
BG=${BG#*:}

dunst -lb $BG -lf $FG -lfr $FG -nb $BG -nf $FG -nfr $FG -cb $BG -cf $FG -cfr $FG
