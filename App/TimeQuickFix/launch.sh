#!/bin/sh
echo $0 $*
LD_PRELOAD=/mnt/SDCARD/miyoo/lib/libpadsp.so /mnt/SDCARD/.tmp_update/bin/infoPanel -t "Resyncing time" -m "Your time is being fixed!" --auto

cd $(dirname "$0")

export TZ=UTC-0

ntpd -N -p 162.159.200.1

hwclock -w
