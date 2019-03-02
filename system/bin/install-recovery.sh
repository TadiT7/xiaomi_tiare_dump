#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:20692228:37c35dc29165e55e365bc669ead794edf4d98df6; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:15920384:e8bfa36ee756c872c601392035e77df4448864c3 EMMC:/dev/block/bootdevice/by-name/recovery 37c35dc29165e55e365bc669ead794edf4d98df6 20692228 e8bfa36ee756c872c601392035e77df4448864c3:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
