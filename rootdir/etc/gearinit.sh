#!/system/xbin/busybox sh

if [ ! -f "/system/etc/gearcm" ]
then
   echo "Wrong ROM, reboot...";
   reboot recovery;
else
   echo "This is GearCM, continue...";
fi

# Mount / as RW
#mount -t rootfs -o remount,rw rootfs

# Initialize Synapse
#chown -R root.root /res/synapse
#chmod -R 777 /res/synapse
#ln -s /res/synapse/uci /sbin/uci
#/sbin/uci


# PVR GPU Tweaks
echo 0 > /sys/module/pvrsrvkm/parameters/gPVRDebugLevel

# Mount /system as RW
#mount -w -o remount /system

exit 0
