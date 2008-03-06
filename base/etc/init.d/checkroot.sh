#! /bin/sh
#
# Name: checkroot.sh 
# Date: 2003-06-24 19:25
# Author: MontaVista Software, Inc. <source@mvista.com>
# Copyright: Copyright 1999-2003 MontaVista Software, Inc.
# License: 2003 (c) MontaVista Software, Inc. This file is licensed
#          under the terms of the GNU General Public License version 2.
#          This program is licensed "as is" without any warranty of any
#          kind, whether express or implied.
# 
# Copyright 2002, 2003, 2004 Sony Corporation
# Copyright 2002, 2003, 2004 Matsushita Electric Industrial Co., Ltd.
#
### BEGIN INIT INFO
# Required-Start: 
# Required-Stop:
# Should-Start:
# Should-Stop:
# Default-Start: S
# Default-Stop: 0 1 2 3 4 5 6
# Short-Description: Check to root file system.
# Description: Check to root file system.
### END INIT INFO 
# chkconfig: S 10 0

# Init script information
INIT_NAME=rcS
DESC=""

# Individual Daemon information
DAEMON1=/sbin/swapon
ARGS1="-a"
BASENAME1=${DAEMON1##*/}
DAEMON2=/bin/mount
ARGS2="-n /proc"
BASENAME2=${DAEMON2##*/}
DAEMON3=/bin/umount
ARGS3="-n -o remount,ro /"
BASENAME3=${DAEMON3##*/}
DAEMON4=/sbin/update
DAEMON5=/sbin/fsck
DAEMON6=/sbin/sulogin
DAEMON7=/sbin/reboot

# Load init script configuration
[ -f /etc/default/rcS ] && . /etc/default/rcS

# Source the init script functions
. /etc/init.d/init-functions

# Verify daemons are installed
NFOUND=5
if [ "$FSCKSWAP" != "no" ]
then
test -f $DAEMON1 -a -f $DAEMON3 || exit $NFOUND
fi
test -f $DAEMON2 || exit $NFOUND
test -f $DAEMON5 -a -f $DAEMON6 -a -f $DAEMON7 || exit $NFOUND
test -f /bin/grep || exit $NFOUND

RET=0 ERROR=""
#
# Set SULOGIN in /etc/default/rcS to yes if you want a sulogin to be spawned
# from this script *before anything else* with a timeout, like SCO does.
#
[ "$SULOGIN" = yes ] && $DAEMON6 -t 30 $CONSOLE

#
# Activate the swap device(s) in /etc/fstab. This needs to be done
# before fsck, since fsck can be quite memory-hungry.
#
if [ "$FSCKSWAP" != "no" ]
then
    if ! grep -qs resync /proc/mdstat
	then
        log_status_msg "Activating swap..." -n
        $DAEMON1 $ARGS1 2> /dev/null
	RET=$?
	if [ $RET -eq 0 ]; then
		log_success_msg "done. "
	else
		log_failure_msg " failed ($RET: $ERROR)."
	return 1
	fi
    fi
fi

#
# Ensure that bdflush (update) is running before any major I/O is
# performed (the following fsck is a good example of such activity :).
#
test -x $DAEMON4 && $DAEMON4

#
#	Read /etc/fstab.
#
exec 9>&0 </etc/fstab
rootmode=rw
rootopts=rw
rootcheck=yes
devfs=
while read fs mnt type opts dump pass junk
do
        case "$fs" in
		""|\#*)
			continue;
			;;
	esac
        [ "$type" = devfs ] && devfs="$fs"
	[ "$mnt" != / ] && continue
	rootopts="$opts"
        [ "$pass" = 0 ] && rootcheck=no
	case "$opts" in
		ro|ro,*|*,ro|*,ro,*)
			rootmode=ro
			;;
	esac
done
exec 0>&9 9>&-

#
# Check the root file system.
#
if [ -f /fastboot ] || [ $rootcheck = no ]
then
	[ $rootcheck = yes ] && log_status_msg "Fast boot, no file system check"
else
	#
	# Ensure that root is quiescent and read-only before fsck'ing.
	#
	log_status_msg "Mounting readonly root filesystem..." -n
	$DAEMON2 $ARGS3
	RET=$?
	if [ $RET -eq 0 ]
	then
		log_success_msg "done. "
		[ -f /forcefsck ] && force="-f" || force=""
		[ "$FSCKFIX" = yes ] && fix="-y" || fix="-a"
		log_status_msg "Checking root file system..." -n
		$DAEMON5 -C $force $fix /
		RET=$?
		#
    		# If there was a failure, drop into single-user mode.
    		#
    		# NOTE: "failure" is defined as exiting with a return code of
    		# 2 or larger.  A return code of 1 indicates that file system
    		# errors were corrected but that the boot may proceed.
    		#

    		if [ $RET -eq 0 ]
	then
			log_success_msg "done. "
	else
      			# Surprise! Re-directing from a HERE document (as in
      			# "cat << EOF") won't work, because the root is read-only.
      			log_status_msg ""
      			log_status_msg "fsck failed.  Please repair manually and reboot.  Please note"
      			log_status_msg "that the root file system is currently mounted read-only.  To"
      			log_status_msg "remount it read-write:"
      			log_status_msg ""
      			log_status_msg "   # mount -n -o remount,rw /"
      			log_status_msg ""
      			log_status_msg "CONTROL-D will exit from this shell and REBOOT the system."
      			log_status_msg ""
      			# Start a single user shell on the console
      			$DAEMON6 $CONSOLE
     			$DAEMON7 -f
	fi
	else
    		log_failure_msg " failed ($RET: $ERROR)."
		log_status_msg	"*** ERROR!  Cannot fsck root fs because it is not mounted read-only!"
		return 1
	fi
fi

#
# If the root filesystem was not marked as read-only in /etc/fstab,
# remount the rootfs rw but do not try to change mtab because it
# is on a ro fs until the remount succeeded. Then clean up old mtabs
# and finally write the new mtab.
#
log_status_msg "Remounting root filesystem..." -n
$DAEMON2 -n -o remount,$rootopts /
RET=$?
if [ $RET -eq 0 ]; then
	log_success_msg "done. "
else
	log_failure_msg " failed ($RET: $ERROR)."
	return 1
fi
if [ "$rootmode" = rw ]
then
       	rm -f /etc/mtab~ /etc/nologin
       	: > /etc/mtab
       	$DAEMON2 -f -o remount,$rootopts /
       	[ "$devfs" ] && grep -q '^devfs /dev' /proc/mounts && $DAEMON2 -f "$devfs"
fi

log_status_msg ""
#return 0

