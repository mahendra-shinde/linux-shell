#!/bin/bash
if [ "$#" -lt 3 ]; then
	echo "This script requires 3 arguments"
	return;
fi
if [ ! -e $1 ]; then 
       touch $1
fi       
if [ -f $1 ]; then
	echo "File found, lets add lines"
	for (( x=1; x<=$3; x++)) ; do
		echo "Writing line"
		echo "$2" >> $1
	done
fi
