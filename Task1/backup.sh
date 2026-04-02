#!/bin/bash

source=$1
destination=$2
logfile="back.log"

if [ -z "$source" ] || [ -z "$destination" ]; then
	echo "Add source file and destination folder"
	exit 1
fi

if [ ! -f "$source" ]; then
	echo "Source file dont exist"
	exit 1
fi

if [ ! -d "$destination" ]; then
	echo "Destination directory does not exist"
	exit 1
fi

timestamp=$(date +"%Y%m%d_%H%M%S")
backupFile="backup_$timestamp.tar.gz"

if tar -czf "$destination/$backupFile" "$source"; then
	echo "$(date) SUCCESS backup created " >> $logfile
else
	echo "$(date) FAIL backup" >> $logfile
	exit 1
fi

ls -t "$destination"/backup_*.tar.gz | tail -n +6 | xargs rm -f

echo "Done"

