#!/bin/sh -e
# Inspired from a script by Remco <remco@d-compu.dyndns.org>.
# Support for /dev/discs/* and /dev/cdroms/* by Daniel Mueller <danm@gmx.li>.
#
# BUS="scsi", KERNEL="sd[a-z][0-9]*", PROGRAM="/etc/udev/scsi-devfs.sh %k %b %n", NAME="%1c", SYMLINK="%k %2c"

get_ide_offset() {
	local num=0
	local dev

	for dev in /proc/ide/*/media; do
		if [ "`cat $dev`" = "$1" ]; then
			num=$(($num + 1))
		fi
	done

	echo $num
}

get_next_number() {
	local num=0
	local dev
	local offset=`get_ide_offset $2`
	
	if [ "$2" = "disk" ]; then
		local DRIVE="${1%%[0-9]*}"
		local DEVLIST="/sys/block/sd*"
	else
		local DRIVE=$1
		local DEVLIST="/sys/block/sr*"
	fi

	for dev in $DEVLIST; do
		[ "${dev#/sys/block/}" = "$DRIVE" ] && break
		num=$(($num + 1))
	done

	echo $(($offset + $num))
}

# the format is "HOST:BUS:TARGET:LUN"
SCSI_ID=$2
HOST=${SCSI_ID%%:*}
SCSI_ID=${SCSI_ID#*:}
BUS=${SCSI_ID%%:*} 
SCSI_ID=${SCSI_ID#*:} 
TARGET=${SCSI_ID%%:*} 
SCSI_ID=${SCSI_ID#*:}
LUN=$SCSI_ID 

case "$1" in
scd*|sr*)
	# CDROM/DVD
	NAME=cd
	LINK="cdroms/cdrom"`get_next_number $1 cdrom`
	;;
sd*)
	if [ "$3" ]; then
		NAME=part$3
		LINK="discs/disc"`get_next_number $1 disk`/part${3}
	else
		NAME=disc
		LINK="discs/disc"`get_next_number $1 disk`/disc
	fi
	;;
nst*)
	NAME=$(echo "$1" | sed -e 's/nst0m/nmt/')
	[ $NAME = "mt0" ] && LINK=ntape
	;;
st*)
	NAME=$(echo "$1" | sed -e 's/st0m/mt/')
	[ $NAME = "mt0" ] && LINK=tape
	;;
sg*|*)
	NAME=generic
	;;
esac

echo scsi/host$HOST/bus$BUS/target$TARGET/lun$LUN/$NAME $LINK

exit 0
