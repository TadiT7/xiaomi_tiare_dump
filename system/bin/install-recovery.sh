#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:20692228:29acd0e5b00c91c70f6d47923b3371dacea89f9c; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:15920384:f55fd384ea3b27e40d5c8c21772f0062e3183682 EMMC:/dev/block/bootdevice/by-name/recovery 29acd0e5b00c91c70f6d47923b3371dacea89f9c 20692228 f55fd384ea3b27e40d5c8c21772f0062e3183682:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
