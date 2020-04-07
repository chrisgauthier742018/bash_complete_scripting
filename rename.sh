#!/usr/bin/bash


if [[ $# != 1 ]]
then
	echo "$0 [ directory name ]"
else
	find $1 -mtime +90 -exec mv {} {}.old \;
fi
