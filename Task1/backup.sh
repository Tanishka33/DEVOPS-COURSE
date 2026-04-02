#!/bin/bash

# Input arguments
source=$1
destination=$2

# Log file path
logfile="/mnt/c/DEVOPS-COURSE/Task1/back.log"

# If argument are given
if [ -z "$source" ] || [ -z "$destination" ]; then
	echo "Add source file and destination folder"
	exit 1
fi

# if source file exist
if [ ! -f "$source" ]; then
	echo "Source file dont exist"
	exit 1
fi

# if destiantion folder exist
if [ ! -d "$destination" ]; then
	echo "Destination directory does not exist"
	exit 1
fi

# generate timestamp
timestamp=$(date +"%Y%m%d_%H%M%S")

#name backup file 
backupFile="backup_$timestamp.tar.gz"

# Create compressed backup
if tar -czf "$destination/$backupFile" "$source"; then
	echo "$(date) SUCCESS backup created " >> $logfile
else
	echo "$(date) FAIL backup" >> $logfile
	exit 1
fi

# keeping only latest 5 backups
ls -t "$destination"/backup_*.tar.gz | tail -n +6 | xargs rm -f

echo "Done"


# Run Script
# ./backup.sh <sourcefile> <destinationdirectory>

# Run script -> ./backup.sh file.txt backup
