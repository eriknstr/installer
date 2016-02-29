#!/bin/sh

if [ ! -e harddrive.bin ]
then
    dd if=/dev/zero of=harddrive.bin bs=1M count=128
fi

qemu-system-x86_64 -enable-kvm -hda harddrive.bin -cdrom minimal_linux_live.iso -net none -serial mon:stdio -vga std

