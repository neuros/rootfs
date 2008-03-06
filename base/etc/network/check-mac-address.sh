#!/bin/sh
# Checks if the given interface matches the given ethernet MAC
# if it does it exits with 0 status, if it doesn't then it exists
# with 1 (error) status.

set -e

export LANG=C

if [ -n "$1" -a -n "$2" ] ; then
	echo "Usage: $0 IFACE targetMAC"
	exit 1
fi
iface="$1"
targetmac=`echo "$2" | sed -e 'y/ABCDEF/abcdef/'`
mac=$(/sbin/ifconfig "$iface" | sed -n -e '/^.*HWaddr \([:[:xdigit:]]*\).*/{s//\1/;y/ABCDEF/abcdef/;p;q;}')

if [ "$targetmac" = "$mac" ]; then exit 0; else exit 1; fi
