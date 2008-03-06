#! /bin/sh

# chkconfig: S 35 0

set -e

[ "$(uname -s)" = "Linux" ] || exit 0

#
#	First find out if devshm is available. 
#

devshm_avail=$(grep -qci '[<[:space:]]tmpfs' /proc/filesystems || true)
devshm_mounted=$(grep -qci '/dev/shm' /proc/mounts || true)

if [ "$devshm_avail" != 0 ]
then
	#
	#	Create mountpoint
	#
	[ -d /dev/shm ] || mkdir --mode=755 /dev/shm

	#
	#	Mount /dev/shm if needed.
	#
	if [ "$devshm_mounted" = 0 ]
	then
		mount -t tmpfs tmpfs /dev/shm
	fi
	if [ -e /usr/bin/ngptinit ]
	then
		echo -n "Initializing ngpt's shared resources : "
		/usr/bin/ngptinit
	fi
fi
