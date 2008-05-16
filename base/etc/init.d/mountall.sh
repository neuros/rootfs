#!/bin/sh
###############################################################################$
#
# Filename: /etc/init.d/mountall.sh
#
# File Description: Init.d Script to Mount all fileystems
#
# @author Thomas Bruno:  tom@limesg.com
# @version  $Revision: 1.0 $
#
###############################################################################$

[ "$1" != "" ] && action=$1
if [ "$action" = "" ]
then
      echo "Usage: $0 <action  start|stop>" >&2
      exit 1
fi

if [ "$action" = "start" ]
then

/bin/mount -a
fi

exit 0
