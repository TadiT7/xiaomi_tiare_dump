#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:20692228:b2b604bfb45337166c2cbae5192c880968eb090c; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:15920384:5847cccd27d879ca745ecebdedce5540387ea4e2 EMMC:/dev/block/bootdevice/by-name/recovery b2b604bfb45337166c2cbae5192c880968eb090c 20692228 5847cccd27d879ca745ecebdedce5540387ea4e2:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
