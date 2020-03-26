#!/bin/sh
# progressbar.sh - takes a percent (0-100) and prints a progress bar based on it

percent=$1
solid=$(((percent + 2) / 4))
hollow=$((25 - solid))

for ((i=0; i<$solid; i++)); do
    echo -n '▓'
done

for ((i=0; i<$hollow; i++)); do
    echo -n '░'
done

echo
