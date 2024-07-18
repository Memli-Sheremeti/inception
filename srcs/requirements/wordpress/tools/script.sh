#!bin/bash

wp core download --allow-root

sleep 10

wp core config --dbname=${SQL_DATABASE} --dbuser=${SQL_USER} --dbpass=$(cat /run/secrets/db_password) --dbhost="mariadb" --allow-root

wp core install --url=mshereme.42.fr --title=${SQL_DATABASE} --admin_user=${SQL_ROOT} --admin_password=$(cat /run/secrets/db_root_password) --admin_email=god@gmail.com --allow-root

wp user create mshereme mshereme@lol.com --role=author --user_pass=$(cat /run/secrets/db_password) --allow-root

exec /usr/sbin/php-fpm7.4 -F;
