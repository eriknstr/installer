#!/bin/sh

if [ ! -e harddrive.bin ]
then
    dd if=/dev/zero of=harddrive.bin bs=1M count=256
fi

qemu-system-i386 -enable-kvm -hda harddrive.bin -cdrom redox-installer.iso -net none -serial mon:stdio -vga std

