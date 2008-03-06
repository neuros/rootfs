#! /bin/sh
#
# Name: checkfs.sh
# Date: 2003-06-23 19:40 
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
# Required-Start: checkroot.sh 
# Required-Stop:
# Should-Start:
# Should-Stop:
# Default-Start: S
# Default-Stop: 0 1 2 3 4 5 6
# Short-Description: Check all filesystems
# Description: Check all filesystems
### END INIT INFO 
# chkconfig: S 30 0

# Init script information
INIT_NAME=rcS
DESC="checking all file systems"

# Load init script configuration
[ -f /etc/default/$INIT_NAME ] && . /etc/default/$INIT_NAME

# Source the init script functions
. /etc/init.d/init-functions

# Individual Daemon information
DAEMON1=/sbin/fsck
BASENAME1=${DAEMON1##*/}
DAEMON2=/sbin/sulogin

# Verify daemons are installed
NFOUND=5
test -f $DAEMON1 || exit $NFOUND
test -f $DAEMON2 || exit $NFOUND

RET=0 ERROR=""

if [ ! -f /fastboot ]
then
	[ -f /forcefsck ] && force="-f" || force=""
	[ "$FSCKFIX" = yes ] && fix="-y" || fix="-a"
	log_status_msg "Starting $DESC: " -n 
	log_status_msg $BASENAME1 
	ARGS1="-C -R -A $fix $force"
	$DAEMON1 $ARGS1 
	RET=$?
	if [ $RET -eq 0 ]; then
		log_success_msg ""
    else
		log_failure_msg " failed ($RET: $ERROR). Please repair manually."
		log_failure_msg "CONTROL-D will exit from this shell and continue system startup."
      # Start a single user shell on the console
		$DAEMON2 $CONSOLE
    fi
fi
rm -f /fastboot /forcefsck
