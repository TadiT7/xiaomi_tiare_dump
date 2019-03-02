#!/system/bin/sh

echo 0 > /sys/module/msm_poweroff/parameters/download_mode

time=$(date +%y%m%d_%H:%M:%S)
for i in $(seq 10); do
    cd /data/local/log; /system/bin/QMESA_64 -numThreads 8 -secs 864000 >&1 > /data/local/log/qb_$time+$i.txt
done
