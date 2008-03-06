#! /bin/sh
#
# Name: procps.sh 
# Date: 2003-06-23 14:00
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
# Short-Description: Set kernel variables from /etc/sysctl.conf
# Description: Set kernel variables from /etc/sysctl.conf
### END INIT INFO 
# chkconfig: S 30 0

# Init script information
INIT_NAME=rcS
DESC="Setting kernel variables"

# Individual Daemon information
DAEMON1=/sbin/sysctl
ARGS1="-p"
BASENAME1=${DAEMON1##*/}
DIR1=/etc/sysctl.conf

# Load init script configuration
[ -f /etc/default/$INIT_NAME ] && . /etc/default/$INIT_NAME

# Source the init script functions
. /etc/init.d/init-functions

# Verify daemons are installed
NFOUND=5
test -x $DAEMON1 || exit $NFOUND
test -r $DIR1 || exit $NFOUND 

# Each init script action is defined below...

start() {
	local RET ERROR=
	
	log_status_msg "$DESC: " -n
	log_status_msg "$BASENAME1" -n
	$DAEMON1 $ARGS1
	RET=$?
	if [ $RET -eq 0 ]; then
		log_success_msg ". "
               else
		log_failure_msg " failed ($RET: $ERROR)."
		return 1
               fi
	
	log_status_msg ""
	return 0
}

#
# if the service does not support reload return code 3 should
# be the result...
#

#
# Everything after this should be the same for all init scripts
#
# See the policy manual for information on actions and return codes.
#

parse() {
	case "$1" in
		start | restart | try-restart | reload | force-reload)
			start
			return $?
               ;;
		stop | status)
               ;;
       *)
			echo "Usage: $INIT_NAME " \
			"{start|restart|try-restart|reload|" \
			"force-reload}" >&2
               ;;
	esac
	
	return 1
}

parse $@

