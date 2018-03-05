#!/bin/bash

SCRIPT=$(readlink -f "$0")
CURPATH=$(dirname $SCRIPT)

if [[ -n "$1" ]] 
then
	SRC=$CURPATH/$1
else
	SRC=$(ls -td $CURPATH/*/ | head -1)
fi

if [[ -n "$2" ]] 
then
	DEST=$2
else
	DEST=/linx
fi

/work/usr/sh/linxbackup2/linxrestore.sh -i $SRC -d $DEST

exit 0
