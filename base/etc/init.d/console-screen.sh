#! /bin/sh
#
# Name: console-screen.sh 
# Date: 2003-06-24 18:00
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
# Short-Description: boot script for the `console-tools'
# Description: This is the boot script for the `console-tools' package.
### END INIT INFO 
# chkconfig: S 48 0

# Init script information
INIT_NAME=/etc/console-tools/config
DESC=""

# Individual Daemon information
SETFONT="/usr/bin/consolechars"
SETFONT_OPT=""
CHARSET="/usr/bin/charset"
VCSTIME="/usr/sbin/vcstime"
BASEVCSTIME=${VCSTIME##*/}

# Load init script configuration
[ -f $INIT_NAME ] && . $INIT_NAME

# Source the init script functions
. /etc/init.d/init-functions

# Verify daemons are installed
NFOUND=5
test -f $SETFONT || exit $NFOUND
test -f $CHARSET || exit $NFOUND
test -f $VCSTIME || exit $NFOUND

# Each init script action is defined below...

setup() {
	local RET ERROR=

	# set DEVICE_PREFIX depending on devfs
	if [ "`grep -c devfs /proc/filesystems`" -a -d /dev/vc ]; then
  		DEVICE_PREFIX="/dev/vc/"
	else
  		DEVICE_PREFIX="/dev/tty"
	fi

    	# reset vga palette
    	if ! /usr/bin/tty | grep -q ttyS ; then
       		# not a serial console.
       		if [ -f /proc/fb ]; then
           		# They have a framebuffer device.
           		# That means we have work to do...
           		echo -n "^[]R"
       		fi
    	fi

    	# start vcstime
    	if [ "${DO_VCSTIME}" = "yes" -a -x ${VCSTIME} ] ; then
      		log_status_msg "Starting clock on text console:" -n 
		log_status_msg ${BASEVCSTIME} -n
  ${VCSTIME} &
      		log_status_msg "."
    	fi

    	# Global default font+sfm
    	if [ "${SCREEN_FONT}" ]
    	then
        	log_status_msg "Setting up general console font... " -n
        SCREEN_FONT="-f ${SCREEN_FONT}"

        	# maybe use an external SFM
        	[ "${SCREEN_FONT_MAP}" ] && SCREEN_FONT_MAP="-u ${SCREEN_FONT_MAP}"

        	${SETFONT} ${SETFONT_OPT} ${SCREEN_FONT} ${SCREEN_FONT_MAP}
		RET=$?
		if [ $RET -eq 0 ]; then
                	log_success_msg "done. "
        	else
                	log_failure_msg " failed ($RET: $ERROR)."
                	return 1
    fi

		log_status_msg "done."
    fi

    	# Per-VC font+sfm
    	PERVC_FONTS=`set | grep "^SCREEN_FONT_vc[0-9]*="`
    	if [ "${PERVC_FONTS}" ]
    	then
        	log_status_msg "Setting up per-VC fonts: " -n
        	for font in ${PERVC_FONTS}
        	do
            		# extract VC and FONTNAME info from variable setting
            		font=`echo $font | cut -c15-`
            		vc=`echo $font | cut -d= -f1`
            		font=`echo $font | cut -d= -f2`
            		log_status_msg "${DEVICE_PREFIX}${vc}, " -n
            		# eventually find an associated SFM
            		eval sfm=\${SCREEN_FONT_MAP_vc${vc}}
            		[ "$sfm" ] && sfm="-u $sfm"

            		${SETFONT} --tty=${DEVICE_PREFIX}$vc ${SETFONT_OPT} -f $font $sfm
        	done
        	log_status_msg "done."
    fi
    
	# Global ACM
    	[ "${APP_CHARSET_MAP}" ] && ${CHARSET} G0 ${APP_CHARSET_MAP}

    	# Per-VC ACMs
    	PERVC_ACMS=`set | grep "^APP_CHARSET_MAP_vc[0-9]*="`
    	if [ "${PERVC_ACMS}" ]
    	then
        	log_status_msg "Setting up per-VC ACM's: " -n
        	for acm in ${PERVC_ACMS}
        	do
            		# extract VC and FONTNAME info from variable setting
            		acm=`echo $acm | cut -c19-`
            		vc=`echo $acm | cut -d= -f1`
            		acm=`echo $acm | cut -d= -f2`

            		log_status_msg "${DEVICE_PREFIX}${vc} ($acm), " -n
            		${CHARSET} --tty=${DEVICE_PREFIX}$vc G0 $acm
        	done
        	log_status_msg "done."
    	fi
	
	log_status_msg ""
	return 0
}

#
# Everything after this should be the same for all init scripts
#
# See the policy manual for information on actions and return codes.
#

parse() {
	case "$1" in
		start | restart | try-restart | reload | force-reload)
			setup
			return $?
			;;
		stop)
			;;
		*)
			echo "Usage: $INIT_NAME " \
			"{start|stop|restart|try-restart|reload|" \
			"force-reload}" >&2
			;;
	esac
	
	return 1
}

parse $@

