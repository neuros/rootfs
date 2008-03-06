#! /bin/sh
#
# Name: mountall.sh 
# Date: 2003-03-20 18:30
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
# Short-Description: Mount all filesystems.
# Description: Mount all filesystems.
### END INIT INFO 
# chkconfig: S 35 0

# Init script information
INIT_NAME=rcS
DESC="mounting local filesystems"

# Individual Daemon information
DAEMON1=/bin/mount
ARGS1="-avt nonfs,noproc,nosmbfs"
BASENAME1=${DAEMON1##*/}

# Load init script configuration
[ -f /etc/defaults/$INIT_NAME ] && . /etc/defaults/$INIT_NAME

# Source the init script functions
. /etc/init.d/init-functions

# Verify daemons are installed
NFOUND=5
test -f $DAEMON1 || exit $NFOUND

log_status_msg "Starting $DESC: " -n
log_status_msg "$BASENAME1 " -n
$DAEMON1 $ARGS1
RET=$?
if [ $RET -eq 0 ]; then
	log_success_msg ""
else
	log_failure_msg " failed ($RET: $ERROR)."
	return 1
fi

if [ ! -p /dev/initctl ]
then
        rm -f /dev/initctl
        mknod -m 600 /dev/initctl p
fi

log_status_msg ""
#return 0
