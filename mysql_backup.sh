#!/bin/bash
file="`date +%d-%m-%y__%I:%M`.sql"

if [[ ! -d '/home/db_backups' ]]
then
	mkdir /home/db_backups
fi

touch /home/db_backups/$file
DEST="/home/db_backups/$file"

echo "please enter your username: "
read username
echo "enter your password please: "
read password
echo "what is your database name you want to take a backup for: "
read dbname


mysqldump -u $username  -p$password $dbname > $DEST