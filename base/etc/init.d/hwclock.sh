#! /bin/sh
#
# Name: hwclock.sh 
# Date: 2003-06-24 20:20
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
# Short-Description: Set and adjust the CMOS clock 
# Description: Set and adjust the CMOS clock, according to the UTC
#              setting in /etc/default/rcS (see also rcS(5)).
### END INIT INFO 
# chkconfig: S 40 25

# Init script information
INIT_NAME=rcS
DESC=""

# Individual Daemon information
DAEMON1=/sbin/hwclock
ARGS1=""
BASENAME1=${DAEMON1##*/}

# Load init script configuration
[ -f /etc/default/$INIT_NAME ] && . /etc/default/$INIT_NAME

# Source the init script functions
. /etc/init.d/init-functions

# Verify daemons are installed
[ "$1" = "status" ] && NFOUND=4 || NFOUND=5
test -f $DAEMON1 || exit $NFOUND

# Each init script action is defined below...

start() {
	local RET ERROR=
	
	[ ! -f /etc/adjtime ] &&  echo "0.0 0 0.0" > /etc/adjtime
        log_status_msg "Setting the System Clock using the Hardware Clock as reference..." -n

		# Copies Hardware Clock time to System Clock using the correct
		# timezone for hardware clocks in local time, and sets kernel
		# timezone. DO NOT REMOVE.
        [ "$HWCLOCKACCESS" != no ] && $DAEMON1 --hctosys $GMT $BADYEAR
		#
		#	Now that /usr/share/zoneinfo should be available,
		#	announce the local time.
		#
        log_status_msg "System Clock set. Local time: `date`"
	log_status_msg ""
	return 0
}

stop () {
	local RET ERROR=

		#
		# Updates the Hardware Clock with the System Clock time.
		# This will *override* any changes made to the Hardware Clock.
		#
		# WARNING: If you disable this, any changes to the system
		#          clock will not be carried across reboots.
		#
        log_status_msg "Saving the System Clock time to the Hardware Clock..." -n
		    [ "$GMT" = "-u" ] && GMT="--utc"
        [ "$HWCLOCKACCESS" != no ] && $DAEMON1 --systohc $GMT $BADYEAR
        log_status_msg "Hardware Clock updated to `date`."
	log_status_msg ""
	return 0
}

status() {
	[ "$HWCLOCKACCESS" != no ] && $DAEMON1 --show $GMT $BADYEAR
	return 0
}

#
# Everything after this should be the same for all init scripts
#
# See the policy manual for information on actions and return codes.
#

parse() {
	case "$1" in
		start)
			start
			return $?
		;;
		stop | restart | try-restart | reload | force-reload)
			stop
			return $?
			;;
		status | show)
			status
			return $?
		;;
	*)
			echo "Usage: $INIT_NAME " \
			"{start|stop|restart|try-restart|reload|" \
			"force-reload|status|show}" >&2
		;;
	esac
	
	return 1
}

[ "$GMT" = "-u" ] && UTC="yes"
case "$UTC" in
       no|"") GMT="--localtime" ;;
       yes)   GMT="--utc"       ;;
       *)     log_status_msg "$0: unknown UTC setting: \"$UTC\"" >&2 ;;
esac

case "$BADYEAR" in
       no|"") BADYEAR=""        ;;
       yes)   BADYEAR="--badyear"       ;;
       *)     log_status_msg "$0: unknown BADYEAR setting: \"$BADYEAR\"" >&2 ;;
esac

parse $@

