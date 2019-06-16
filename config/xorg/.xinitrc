#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx

# Start scripts in xinitrc.d
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# Merge Xresources
XRESOURCES_DIR=$XDG_CONFIG_HOME/xorg
[[ -f $XRESOURCES_DIR/.Xresources ]] && xrdb -merge -I$HOME $XRESOURCES_DIR/.Xresources

# Start wm
sxhkd &
exec bspwm
