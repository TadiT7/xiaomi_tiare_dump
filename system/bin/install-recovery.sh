#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:20692228:bc0a23173c3388e9dda7c9c9b293e27c0cf6080e; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:15920384:6c38515f00ace8a6256f13c5e0976d6d5e2bc909 EMMC:/dev/block/bootdevice/by-name/recovery bc0a23173c3388e9dda7c9c9b293e27c0cf6080e 20692228 6c38515f00ace8a6256f13c5e0976d6d5e2bc909:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
