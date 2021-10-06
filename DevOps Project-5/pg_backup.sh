#!/bin/bash

# Takes a full backup of the database and stores it in the backup folder
# Run this script as the postgres user

DATE=`date +%Y-%m-%d`
PG_PASSWORD='password'
PG_HOSTNAME='hostname'
PG_USERNAME='dbusername'
PRIMARY_DB='primary_db'
BACKUP_DB='backup_db'
USER="ubuntu"
FILE=snapshot_$DATE.tar
start=`date +%s`



cd /home/ubuntu/
echo `pwd`
echo `whoami`

BDIR="../backup"
if [ -d "$BDIR" ]; then
  echo "Backup Directory already present"
else
    echo "Initiating a new backup directory $BDIR"
    mkdir /home/$USER/backup
fi

LDIR="/home/$USER/logs"
if [ -d "$LDIR" ]; then
  echo "Log directory already present"
else
    echo "Initiating a new log directory $LDIR"
    mkdir /home/$USER/logs
fi

cd /home/$USER/backup

echo 'Initiating Backup'

if [ -f "$FILE" ]; then
    echo "$FILE exists."
else
    echo "$FILE does not exist."
    echo "Creating a new snapshot"
    echo `PGPASSWORD=$PG_PASSWORD pg_dump -v -h $PG_HOSTNAME -U $PG_USERNAME -F t $PRIMARY_DB > snapshot_$DATE.tar`
    echo `date` - Backup complete
fi

echo `date` - Restoration Started
echo ''

echo -e `PGPASSWORD=$PG_PASSWORD pg_restore -d $BACKUP_DB snapshot_$DATE.tar -c -v -U $PG_USERNAME -h $PG_HOSTNAME`

end=`date +%s`
runtime=$( echo "$end - $start" | bc -l )
echo `date` - DB Restoration Completed in- $runtime Seconds