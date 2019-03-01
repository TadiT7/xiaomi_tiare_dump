#!/system/bin/sh

umask 022

LOGDIR=/data/local/log

cd $LOGDIR

/system/bin/iozone_v6 -a -p -n 128m -g 4g -i 0 -i 1 -i 2 -V 5 -Rb ./iozone_v6.xls  >> iozone.log
