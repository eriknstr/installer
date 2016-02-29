#!/bin/sh
TFTP=/var/lib/tftpboot

sudo rm -rf $TFTP/*

sudo cp -r net/* $TFTP

sudo cp work/rootfs.cpio.gz $TFTP/initrd.gz

cd work/kernel
cd $(ls -d *)

sudo cp arch/x86/boot/bzImage $TFTP/linux

cd ../../..
