#!/sbin/ash
if [ `blkid /dev/block/bootdevice/by-name/vendor | grep -c ext4` -ge 1 ] ; then
	sed -i '5i\/vendor		ext4	/dev/block/bootdevice/by-name/vendor	flags=backup=1;wipeingui' /etc/recovery.fstab
	sed -i '6i\/vendor_image	emmc	/dev/block/bootdevice/by-name/vendor	flags=backup=0;flashimg=1' /etc/recovery.fstab

	if [ ! -d /vendor ]; then # if not a directory, it either doesnt exist or is a symlink
		if [ -L /vendor ]; then
			rm /vendor
		fi
	fi
mkdir /vendor
fi
