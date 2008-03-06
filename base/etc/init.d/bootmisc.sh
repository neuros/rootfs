#! /bin/sh
#
# Name: bootmisc.sh 
# Date: 2003-06-23 18:00
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
# Short-Description: Miscellaneous things to be done during bootup.
# Description: Miscellaneous things to be done during bootup.
### END INIT INFO 
# chkconfig: S 55 0

# Init script information
INIT_NAME=rcS

# Load init script configuration
[ -f /etc/default/$INIT_NAME ] && . /etc/default/$INIT_NAME

# Source the init script functions
. /etc/init.d/init-functions

test -f /usr/bin/find -a -f /bin/grep -a -f /bin/sed || exit 5
test -f /bin/uname -a -f /bin/dmesg || exit 5
test -f /bin/chmod -a -f /bin/chown -a -f /bin/chgrp || exit 5

RET=0 ERROR=""

#
# Put a nologin file in /etc to prevent people from logging in before
# system startup is complete.
#
if [ "$DELAYLOGIN" = yes ]
then
	echo "System bootup in progress - please wait" > /etc/nologin
  cp /etc/nologin /etc/nologin.boot
fi

#
# Wipe /tmp (and don't erase `lost+found', `quota.user' or `quota.group')!
# Note that files _in_ lost+found _are_ deleted.
#
log_status_msg "Cleaning: /tmp " -n
#
#       If $TMPTIME is set to 0, we do not use any ctime expression
#       at all, so we can also delete files with timestamps
#       in the future!
#
[ "$TMPTIME" = ""  ] && TEXPR="" || TEXPR="! -ctime -$TMPTIME"
( cd /tmp && \
  find . -xdev \
  $TEXPR \
  ! -name . \
  ! \( -name lost+found -uid 0 \) \
  ! \( -name quota.user -uid 0 \) \
  ! \( -name quota.group -uid 0 \) \
    -depth -exec rm -rf -- {} \; )
rm -f /tmp/.X*-lock

#
# Clean up any stale locks.
#
log_status_msg "/var/lock " -n
( cd /var/lock && find . -type f -exec rm -f -- {} \; )
#
# Clean up /var/run and create /var/run/utmp so that we can login.
#
log_status_msg "/var/run " -n
( cd /var/run && \
        find . ! -type d ! -name utmp ! -name random-seed \
        -exec rm -f -- {} \; )
: > /var/run/utmp
if grep -q ^utmp: /etc/group
then
	chmod 664 /var/run/utmp
	chgrp utmp /var/run/utmp
fi
echo "done."

#
#	Set pseudo-terminal access permissions.
#
if [ -c /dev/ttyp0 ]
then
	log_status_msg "Setting pseudo-terminal access permissions..." -n
        chmod 666 /dev/tty[p-za-e][0-9a-f]
        chown root:tty /dev/tty[p-za-e][0-9a-f]
	log_status_msg "done."
fi

#
# Update /etc/motd.
#
if [ "$EDITMOTD" != "no" ]
then
	log_status_msg "Updating /etc/motd..." -n
        uname -a > /etc/motd.tmp
        sed 1d /etc/motd >> /etc/motd.tmp
        mv /etc/motd.tmp /etc/motd
	log_status_msg "done."
fi

#
#	Save kernel messages in /var/log/dmesg
#
dmesg > /var/log/dmesg

log_status_msg ""
exit 0


