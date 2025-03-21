#!/bin/bash
set -e
#stop in one error

# sabject in fale .env
if [ -f .env ]; then
	set -a
	source .env
	set +a
fi

sudo mkdir -p /var/run/mysqld /var/log/mysql
sudo chown -R mysql:mysql /var/log/mysql /var/run/mysqld || true
sudo chmod -R 777 /var/log/mysql /var/run/mysqld


echo "starting MariaDB ... "
mysqld_safe --skip-networking &

until mysqladmin ping --silent; do
	echo "Waiting for MariaDB to start ..."
	sleep 3
done
echo "MariaDB is start "


mysql -u root -p"$ROOT_PASSWORD" <<EOF
CREATE DATABASE IF NOT EXISTS $MY_DB ;
CREATE USER IF NOT EXISTS '$ADMIN'@'%' IDENTIFIED BY '$PASSWORD' ;
GRANT ALL PRIVILEGES ON $MY_DB.* TO '$ADMIN'@'%' ;
ALTER USER 'root'@'localhost' IDENTIFIED BY '$ROOT_PASSWORD' ;
FLUSH PRIVILEGES;
EOF

echo "Database and user setup completed ! "

exec mysqld
