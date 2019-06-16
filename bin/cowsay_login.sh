#!/bin/sh
# cowsay_login.sh - prints randomized cowsay and fortune at login screen.

fortune -a | fmt -80 -s | $(shuf -n 1 -e cowsay cowthink) -$(shuf -n 1 -e b d g p s t w y) -f $(shuf -n 1 -e $(cowsay -l | tail -n +2)) -n > /etc/issue
printf "\n\n\n" >> /etc/issue
