# .zlogin - contains commands to be executed in login shell.

# auto startx on login
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx $XDG_CONFIG_HOME/xorg/.xinitrc
