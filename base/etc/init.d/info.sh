#!/bin/sh
#
# Make sure that the info directory is correct...
#
# chkconfig: S 90 0
#

dirfile=/usr/share/info/dir
infodir=/usr/share/info

## todo: be sure all the tools we need (test, ls, cat, grep, sed, sort, uniq, wc, find, install-info) are installed

echo -n "Updating Info Directory: "

if test ! -e $dirfile; then
	for AFile in `ls $infodir/*info.gz $infodir/*info`; do
		/sbin/install-info $AFile --dir-file=$dirfile > /dev/null 2>&1
	done
	echo 'Created '$dirfile'.'
	exit 0
fi

if test ! $infodir -nt $dirfile; then
	echo 'No updates needed.'
	exit 0 ## no updates needed 
fi

## see if any removals have taken place
numInfoFiles=`ls $infodir/*info.gz $infodir/*info | wc -l`
numInfoReffed=`cat $dirfile | grep -e ^* | grep -e \( | sed -e 's/[^(]\+(\([^)]\+\).*/\1/' | sort | uniq | wc -l`

if test $numInfoFiles -gt $numInfoReffed; then
	## reference all new files
	for i in `find $infodir -name \*info\* -type f -newer $dirfile` ; do
	   /sbin/install-info --dir-file=$dirfile $i > /dev/null 2>&1
        done
	## reevaluate the valiables
	numInfoFiles=`ls -l $infodir/*info.gz $infodir/*info | wc -l`
	numInfoReffed=`cat $dirfile | grep -e ^* | grep -e \( | sed -e 's/[^(]\+(\([^)]\+\).*/\1/' | sort | uniq | wc -l`
fi


if test $numInfoFiles -gt $numInfoReffed; then
	### TODO: we need to remove old /usr/share/info/dir and rerun from the beginning; if a rerun doesn't fix, give up
        ### Don't print warning, this happens sometimes...
	#echo "WARNING: Some info files are still not referenced in the directory ($numInfoFiles exist, $numInfoReffed referenced)"
	echo "Done."
	exit 1 ## we failed
fi

if test $numInfoFiles -lt $numInfoReffed; then
	## some files need to be removed from the index. ulp.
	#echo 'Removing deleted files from the index...'
	for AFile in `cat $dirfile | grep -e ^* | grep -e \( | sed -e 's/[^(]\+(\([^)]\+\).*/\1/' | sort | uniq`; do
		if test ! -e `echo $infodir/$AFile* | head -n 1`; then
			#echo 'Deleting $AFile from the index...'
			echo -n "."
			/usr/sbin/install-info --delete $AFile > /dev/null 2>&1
		fi
	done
fi

echo 'Done.'
