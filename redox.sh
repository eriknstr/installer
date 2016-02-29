#!/bin/sh

sh 5_build_redox.sh
sh 6_generate_rootfs.sh
sh 7_pack_rootfs.sh
sh 8_generate_iso.sh
