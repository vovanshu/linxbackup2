
echo $sizefs > $LSPATH/size.fs

if [[ -f "$SRC/etc/fstab" ]] ; then
	logtt getinfo $n fdisk
	fdisk -l > $LSPATH/fdisk.list

	logtt getinfo $n blkid
	blkid > $LSPATH/blkid.list

	logtt getinfo $n "cp fstab"
	cp $SRC/etc/fstab $LSPATH/fstab.list
fi
