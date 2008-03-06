#! /bin/sh
#
# Name: mountnfs.sh 
# Date: 2003-06-23 16:30 
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
# Required-Start: portmap 
# Required-Stop:
# Should-Start:
# Should-Stop:
# Default-Start: S
# Default-Stop: 0 1 2 3 4 5 6
# Short-Description: mount NFS file systems
# Description: Now that TCP/IP is configured, mount the NFS file
#		systems in /etc/fstab if needed. If possible,
#		start the portmapper before mounting (this is needed for
#		Linux 2.1.x and up).
### END INIT INFO 
# chkconfig: S 45 0

# Init script information
INIT_NAME=rcS
DESC="Mounting remote filesystems..."

# Individual Daemon information
DAEMON1=/bin/mount 
ARGS1="-a -t nfs"
ARGS2="-a -t smbfs"
BASENAME1=${DAEMON1##*/}
FILE1=/etc/fstab
mount_nfs="no"
mount_smb="no"
nfs_mounted="no"
smb_mounted="no"

# Load init script configuration
[ -f /etc/default/$INIT_NAME ] && . /etc/default/$INIT_NAME

# Source the init script functions
. /etc/init.d/init-functions

# Verify daemons are installed
NFOUND=5
test -f $DAEMON1 || exit $NFOUND
test -f $FILE1 || exit $NFOUND



domount() {

if [ "$mount_nfs" = "yes" ] || [ "$mount_smb" = "yes" ]
then
	RET1=0 
	RET2=0 
	ERROR=""
	log_status_msg "$DESC: " -n
        if [ "$mount_nfs" = "yes" ] 
	then 
		$DAEMON1 $ARGS1  
		RET1=$? 
	fi
        if [ "$mount_smb" = "yes" ] 
	then
		$DAEMON1 $ARGS2 
		RET2=$?  
	fi
	if [  "$RET1" -eq "0" -a "$RET2" -eq "0" ] ; then
		log_success_msg "." 
	else
		if [ "$RET1" -ne "0" ] 
		then 
			log_failure_msg " nfs mount failed ($RET1: $ERROR)." 
		fi
		if [ "$RET2" -ne "0" ]
		then
			log_failure_msg " smb mount failed ($RET2: $ERROR)."
		fi
		return 1
	fi
fi

}

cat $FILE1 |
while read device mountpt fstype options
do
	case "$device" in
		""|\#*)
			continue
			;;
	esac
	case "$options" in
		*noauto*)
				;;
			*)
				if [ "$fstype" = "nfs" -a "$nfs_mounted" = "no"  ]
				then 
			 		mount_nfs=yes  
					nfs_mounted=yes
					domount
				fi
				if [ "$fstype" = smbfs -a "$smb_mounted" = "no" ] 
				then 
					mount_smb=yes 
					smb_mounted=yes
					domount
				fi
				;;
		esac
	if [ "$nfs_mounted" = "yes" -a "$smb_mounted" = "yes" ] 
	then 
		log_status_msg "" 
		exit 0
	fi

done

log_status_msg ""


