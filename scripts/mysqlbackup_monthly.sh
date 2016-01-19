#!/bin/bash
now=`date +%Y-%m`
db="DATABASESAVENAME"
dbuser="MYSQLUSER"
host="DATABASEHOST"
pass="MYSQLPASSWORD"
systemuser="SYSTEMUSER"
dbdirectory="DIRECTORYLEADINGUPTOMYSQL_BACKUPSFOLDER"
mysqldump -u"$dbuser" -h"$host" -p"$pass" --hex-blob --routines --triggers --all-databases | gzip > "$dbdirectory"/MySQL_Backups/monthly/"$db"_"$now".sql.gz
