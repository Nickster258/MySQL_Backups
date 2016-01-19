# MySQL_Backups

This is a basic MySQL script that will backup your databases, whether remote or local, to any machine that has mysql access.
This reads the database, compresses the databases, and saves them with timestamps for each file.

Currently it saves one every month including one every day for the last 30 days.

In order for this script to be automated, these scripts have to be added to crontab.

@monthly /directorychosenforscripts/mysqlbackup_monthly.sh
@daily /directorychosenforscripts/scripts/mysqlbackup_daily.sh
