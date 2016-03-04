#!/bin/bash
if [ "$#" -eq 4 ]
then
    echo "Yo yo we backing up your db, please wait...";
    mysqldump --user=$1 --password=$2 $3 > $4;
    echo "Done! today is gonna be a good day."
else
    echo "Oh shit! Small rookie mistake. Invalid number of arguments";
    echo "[usage] ./backupdb username passs database  backupName.sql";
    exit 1
fi
