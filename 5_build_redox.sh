#!/bin/sh
REDOX=~/Projects/redox/

OLDPWD="$PWD"
cd "$REDOX"
make all
cd "$OLDPWD"

cp -f "$REDOX/build/i386-unknown-redox/debug/harddrive.bin" work/redox.bin
gzip -f work/redox.bin
chmod 777 work/redox.bin.gz

