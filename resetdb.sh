#!/bin/bash
if [ "$#" -eq 4 ]
then
    echo "Yo yo we Resetting your db, please wait...";
    mysql --user=$1 --password=$2 --execute="DROP DATABASE IF EXISTS $3; CREATE DATABASE $3;";
    mysql --user=$1 --password=$2 $3 < $4;
    echo "Done! today is gonna be a good day."
else
    echo "Oh shit! Small rookie mistake. Invalid number of arguments";
    echo "[usage] ./resetdb username passs database defaultSQLFile.sql";
    exit 1
fi
