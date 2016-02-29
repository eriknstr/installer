#!/bin/sh

if [ ! -e harddrive.bin ]
then
    dd if=/dev/zero of=harddrive.bin bs=1M count=128
fi

qemu-system-x86_64 -hda harddrive.bin -cdrom minimal_linux_live.iso -serial mon:stdio

