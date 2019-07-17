#!/bin/sh
# progressbar.sh - takes a percent (0-100) and prints a progress bar based on it

percent=$1
solid=$(((percent + 2) / 5))
hollow=$((20 - solid))

for ((i=0; i<$solid; i++)); do
    echo -n '# '
done

for ((i=0; i<$hollow; i++)); do
    echo -n '_ '
done

echo
