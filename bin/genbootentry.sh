#!/bin/sh
# genbootentry.sh - creates new boot entry with given parameters

efibootmgr --disk /dev/sda --part 1 --create --label "Arch Linux" --loader /vmlinuz-linux --unicode 'root=UUID=5b080294-3105-448c-9d32-95ca646e20b4 rw initrd=\initramfs-linux.img' --verbose
