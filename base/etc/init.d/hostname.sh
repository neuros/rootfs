#! /bin/sh
#
# Name: hostname.sh
# Date: 2003-06-20 12:55
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
# Short-Description: Setting the hostname
# Description: Setting the hostname
### END INIT INFO 
# chkconfig: S 40 0

# Init script information
INIT_NAME=hostname.sh
DESC="hostname"

# Individual Daemon information
DAEMON1=/bin/hostname
FILE1=/etc/hostname
ARGS1="--file $FILE1"
BASENAME1=${DAEMON1##*/}

# Load init script configuration
[ -f /etc/default/$INIT_NAME ] && . /etc/default/$INIT_NAME

# Source the init script functions
. /etc/init.d/init-functions

# Verify daemons are installed
[ "$1" = "status" ] && NFOUND=4 || NFOUND=5
test -f $DAEMON1 || exit $NFOUND
test -f $FILE1 || exit $NFOUND

# Each init script action is defined below...

start() {
	local RET ERROR=
	
	log_status_msg "Setting $DESC: " -n
	log_status_msg "$BASENAME1" -n
	$DAEMON1 $ARGS1
	RET=$?
	if [ $RET -eq 0 ]; then
		log_success_msg ". "
	else
		log_failure_msg " failed ($RET: $ERROR)."
		return 1
	fi
	
	# repeat above for each daemon...
	
	log_status_msg ""
	return 0
}

stop () {
	local RET ERROR=

	log_status_msg "Stopping $DESC: " -n
	log_status_msg "$BASENAME1" -n
	killproc $BASENAME1
	RET=$?
	if [ $RET -eq 0 ]; then
		log_success_msg ". "
	else
		log_failure_msg "failed ($RET: $ERROR). " -n
		return 1
	fi

	# repeat above for each daemon...

	log_status_msg ""
	return 0
}

restart() {
	local RET

	log_status_msg "Restarting $DESC..."
	stop
	start
	RET=$?

	return $RET
}

tryrestart() {
	local RET

	pidstatus $BASENAME1
	RET=$?
	if [ $RET -eq 0 ]; then
		restart
		RET=$?
	else
		RET=7
	fi

	return $RET
}

#
# if the service does not support reload return code 3 should
# be the result...
#
reload() {
	local RET

	log_status_msg "Reloading $DESC configuration..." -n
	# killproc $BASENAME1 -HUP
	#
	# repeat as necessary...
	#
	log_success_msg "done."

	return 0
}

forcereload() {
	local RET

	reload
	RET=$?
	if [ $RET -ne 0 ]; then
		restart
		RET=$?
	fi
	
	return $RET
}

status() {
	local RET
	
	printstatus $BASENAME1
	RET=$?

	return $RET
}

#
# Everything after this should be the same for all init scripts
#
# See the policy manual for information on actions and return codes.
#

parse() {
	case "$1" in
		start|restart|try-restart)
			start
			return $?
			;;
		stop|reload|force-reload|status)
			return 0
			;;
		*)
			echo "Usage: $INIT_NAME " \
			"{start|stop|restart|try-restart|reload|" \
			"force-reload|status}" >&2
			;;
	esac
	
	return 1
}

parse $@
