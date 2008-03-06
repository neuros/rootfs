#! /bin/sh
#
# Name: mountswap.sh 
# Date: 2003-06-20 18:15
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
# Short-Description: Mount all swap partitions.
# Description: Mount all swap partitions.
### END INIT INFO 
# chkconfig: S 37 0

# Init script information
INIT_NAME=rcS
DESC="mounting swap"

# Individual Daemon information
DAEMON1=/sbin/swapon
ARGS1=-a
BASENAME1=${DAEMON1##*/}

# Load init script configuration
[ -f /etc/default/rcS ] && . /etc/default/rcS

# Source the init script functions
. /etc/init.d/init-functions

# Verify daemons are installed
NFOUND=5
test -f $DAEMON1 || exit $NFOUND

RET=0 ERROR=""
if [ "$FSCKSWAP" = "no" ]; then
	if [ ! `grep -qs resync /proc/mdstat` ]
	then	
		log_status_msg "Starting $DESC: " -n
		log_status_msg "$BASENAME1" -n
		$DAEMON1 $ARGS1
		RET=$?
		if [ $RET -eq 0 ]; then
			log_success_msg ". "
		else
			log_failure_msg " failed ($RET: $ERROR)."
			return 1
		fi
	fi
fi
	
log_status_msg ""

