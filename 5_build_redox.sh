#!/bin/sh
REDOX=~/Projects/redox/

make -C "$REDOX" all

cp -f "$REDOX/build/i386-unknown-redox/debug/harddrive.bin" work/redox.bin
gzip -f work/redox.bin

