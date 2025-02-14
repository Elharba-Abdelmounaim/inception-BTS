#!/bin/bash

#tilecharg sabject in fale .env
if [ -f .env ]; then
	export $(grep -v '^#' .env |xargs)
fi

service mysql start 
#Run Mysql

while ! nc -z localhost 3306; do
	echo " Waiting for Mysql to start "
	sleep 3
done 

# nc -z localhost 3360 --> checks if port 3360 is open (indicates that MYSQL is running ).
# while ! ..; do sleep 3 ; done --> repeat the check every three scinds until MSQL is availabe . 

echo "CREATE DATABASE IF NOT EXISTS $MY_DB ;" > db1.sql
echo "CREATE USER IF NOT EXISTS '$ADMIN'@'%' IDENTIFIED BY '$PASSWORD' ;" >> db1.sql
echo "GRANT ALL PRIVILEGES ON $MY_DB.* TO '$ADMIN'@'%' ;">>db1.sql
echo "ALTER USER 'root'@'localhost' IDENTIFIED BY '$ROOT_PASSWORD' ;" >>db1.sql
echo "FLUSH PRIVILEGES;" >> db1.sql

#START COMMEND 
mysql -u root --password="$ROOT_PASSWORD" < db1.sql

#it can be replaced in a straightforward manner (" mysql -u root -e "commend !!" " 
systemctl stop mysql


mysqld
