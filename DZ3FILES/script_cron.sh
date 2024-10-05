#!/bin/bash

src_dir="/home/igoryanich/rsync_for_netology"
dest_dir="/tmp/backup/"
log_file="/var/log/syslog"


rsync -a --progress --delete --exclude='.*' $src_dir $dest_dir

if [ $? -ne 0 ]
	then
		echo "$(date) $(hostname) rsync : Backup creation failed!!!" >> $log_file
	else
		echo "$(date) $(hostname) rsync : Backup creation successfully" >> $log_file
fi
