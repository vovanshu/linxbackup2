
if [[ -f "$SRC/usr/bin/apt" ]] ; then
  logtt getinfo $n 'apt list'
  chroot $SRC apt list > $LSPATH/apt.list
  logtt getinfo $n 'apt list --installed'
  chroot $SRC apt list --installed > $LSPATH/apt.installed.list
fi
  
if [[ -f "$SRC/usr/bin/dpkg" ]] ; then
	logtt getinfo $n 'dpkg --get-selections | grep -v deinstall'
  chroot $SRC dpkg --get-selections | grep -v deinstall > $LSPATH/dpkg.deinstall.list
fi

if [[ -f "$SRC/usr/bin/apt-cache" ]] ; then
  logtt getinfo $n 'apt-cache policy'
  chroot $SRC apt-cache policy > $LSPATH/apt.policy.list
fi

if [[ -f "$SRC/usr/bin/pacman" ]] ; then
	logtt getinfo $n 'pacman -Q'
  chroot $SRC pacman -Q > $LSPATH/pacman.list
fi
