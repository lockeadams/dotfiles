#!/usr/bin/bash
# install.sh - automatically symlinks configuration files in their proper locations for my file setup

INSTALLATION_DIR=$(pwd)

# link configuration directories to xdg config home
for d in $INSTALLATION_DIR/config/*; do
    d=$(basename $d)
    echo "Symlinking $d"
    ln -s $INSTALLATION_DIR/config/$d $XDG_CONFIG_HOME
done

# also link .zshenv to ~ so shell can source it
echo "Symlinking .zshenv"
ln -s $INSTALLATION_DIR/config/zsh/.zshenv $HOME

# link entire script directory to ~
echo "Symlinking bin"
ln -s $INSTALLATION_DIR/bin $HOME

# create media directory if it doesn't exist
if [ ! -d ~/media ]; then
    echo "Creating ~/media"
    mkdir $HOME/media
fi

# now link bg directory to appropriate location
echo "Symlinking bg"
ln -s $INSTALLATION_DIR/bg $HOME/media
