#!/usr/bin/bash


files=`find /home/chris/scripts/bash_complete_bash_scripting_udemy -mtime +90`

BACKUP_DIR="/home/chris/scripts/bash_complete_bash_scripting_udemy/backups"

if [[ -d ${BACKUP_DIR} ]]
then
	for i in $files
	do
		cp $i ${BACKUP_DIR}
		rm $i
	done
else
	echo "Our backup directory does not exist"
	exit 1
fi
