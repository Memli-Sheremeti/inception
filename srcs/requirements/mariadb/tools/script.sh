#! /bin/bash

systemd mariadb start

echo " TEST MARIADB "

mysql -e "CREATE DATABASE IF NOT EXISTS ${SQL_DATABASE};"

mysql -e "CREATE USER IF NOT EXISTS \'${SQL_USER}\'@\'localhost\' IDENTIFIED BY \'${SQL_PASSWORD}\'";

mysql -e "GRANT ALL PRIVILEGES ON \'${SQL_USER}\'@'localhost' IDENTIFIED BY '${SQL_PASSWORD}';"

mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BT '${SQL_ROOT_PASSWORD}';"

mysql -e "FLUSH PRIVILEGES;"

mysqladmin -u root -p$SQL_ROOT_PASSWORD shutdown

exec "$@"