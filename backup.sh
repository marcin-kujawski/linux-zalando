#!/bin/bash

logger "$0 script - Work in progres.."
BACKUP_DIR=$HOME/backup
mkdir -p $BACKUP_DIR
CREATE_STATUS=$?
if [[ $CREATE_STATUS -eq 0 ]]; then
	logger "$0 script - Backup folder created successfully"
	cp -rp /var/log/syslog* $BACKUP_DIR && echo "bakcup done"
else
	logger "$0 script - Backup folder creation failed"
	exit 127

fi
exit 0
