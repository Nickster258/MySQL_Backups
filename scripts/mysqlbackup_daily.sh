#!/bin/bash
now=`date +%Y-%m-%d`
db="DATABASESAVENAME"
dbuser="MYSQLUSER"
host="DATABASEHOST"
pass="MYSQLPASSWORD"
systemuser="SYSTEMUSER"
dbdirectory="DIRECTORYLEADINGUPTOMYSQL_BACKUPSFOLDER"
mysqldump -u"$dbuser" -h"$host" -p"$pass" --hex-blob --routines --triggers --all-databases | gzip > "$dbdirectory"/MySQLBackups/daily/"$db"_"$now".sql.gz
find "$dbdirectory"/MySQLBackups/daily/ -mindepth 1 -mtime +30 -delete
