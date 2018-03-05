#!/bin/bash

SCRIPT=$(readlink -f "$0")
CURPATH=$(dirname $SCRIPT)

if [[ ! -n "$1" ]] 
then
	SRC=$1
else
	SRC=/linx
fi
	
/work/usr/sh/linxbackup2/linxbackup.sh -i $SRC -d $CURPATH -t 3

# chmod -R 777 $CURPATH

exit 0
