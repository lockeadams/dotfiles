#!/bin/sh

# create necessary directories
# so the entire directory won't be tracked
if [ ! -d ~/media ]; then
    echo "Creating ~/media"
    mkdir media
fi

# stow contents of each directory in home
# handles config seperately
# because it is an extra top-level directory
cd ~/dotfiles
for d in */; do
    d=${d%/}
    if [ $d = config ]; then
        cd ~/dotfiles/config
        for c in *; do
            c=${c##*/}
            echo "Stowing $c"
            stow $c -t ~
        done
    else
        cd ~/dotfiles
        echo "Stowing $d"
        stow $d
    fi
done
