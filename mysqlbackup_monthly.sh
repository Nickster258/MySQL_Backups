#!/bin/bash
now=`date +%Y-%m`
db="DATABASESAVENAME"
dbuser="MYSQLUSER"
host="DATABASEHOST"
pass="MYSQLPASSWORD"
mysqldump -u"$dbuser" -h"$host" -p"$pass" --hex-blob --routines --triggers --all-databases | gzip > /home/"$systemuser"/MySQLBackups/monthly/"$db"_"$now".sql.gz
