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
	n=1
    while [ $n -le $3 ]
    do
        echo "$2" >> $1
        n=$(( n+1 ))
    done
fi
