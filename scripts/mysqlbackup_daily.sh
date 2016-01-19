#!/bin/bash
now=`date +%Y-%m`
db="DATABASESAVENAME"
dbuser="MYSQLUSER"
host="DATABASEHOST"
pass="MYSQLPASSWORD"
systemuser="SYSTEMUSER"
mysqldump -u"$dbuser" -h"$host" -p"$pass" --hex-blob --routines --triggers --all-databases | gzip > /home/"$systemuser"/MySQLBackups/daily/"$db"_"$now".sql.gz
find /home/mcadmin/MySQLBackups/daily/ -mindepth 1 -mtime +30 -delete
