#! /bin/sh
#
# Name: umountnfs.sh 
# Date: 2003-06-25 20:00
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
# Default-Start: 0 6
# Default-Stop: 1 2 3 4 5 
# Short-Description: Unmount all network file systems.
# Description: Unmount all network file systems.
### END INIT INFO 
# chkconfig: 06 31 0

# Init script information
INIT_NAME=
DESC="Unmounting remote filesystems... "

# Individual Daemon information
DAEMON1=/bin/umount
ARGS1="-a -r"
BASENAME1=${DAEMON1##*/}
DAEMON2=/sbin/halt
DAEMON3=/bin/uname

MOUNTED_NFS=`awk '$2 != "/" && $3 == "nfs"   { print $2 }' /proc/mounts`
MOUNTED_SMB=`awk '$2 != "/" && $3 == "smbfs" { print $2 }' /proc/mounts`

# Source the init script functions
. /etc/init.d/init-functions

# Verify daemons are installed
NFOUND=5
test -f $DAEMON1 -a -f $DAEMON2 -a -f $DAEMON3 || exit $NFOUND

case "`$DAEMON3 -r`" in
  1.*|2.[01].*) FORCE=""   ;;
  *)            FORCE="-f" ;;
esac

# Write a reboot record to /var/log/wtmp before unmounting
$DAEMON2 -w

log_status_msg "$DESC" -n
for path in $MOUNTED_NFS $MOUNTED_SMB; do
   $DAEMON1 $path $ARGS1 $FORCE
done

RET=$?
if [ $RET -eq 0 ]; then
	log_success_msg "done. "
else
	log_failure_msg " failed ($RET: $ERROR)."
	exit 1
fi

log_status_msg ""
exit 0


