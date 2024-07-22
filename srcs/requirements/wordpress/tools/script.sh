#!bin/bash

if [ -f "/var/www/html/wp-config.php" ];
then
	echo "Wordpress already set"
else 
	wp core download --allow-root

	wp core config --dbname=${SQL_DATABASE} --dbuser=${SQL_USER} --dbpass=$(cat /run/secrets/db_password) --dbhost="mariadb" --allow-root

	wp core install --url=mshereme.42.fr --title=${SQL_DATABASE} --admin_user=${WP_ROOT} --admin_password=$(cat /run/secrets/db_root_password) --admin_email=god@gmail.com --allow-root

	wp user create ${WP_USER} ${WP_EMAIL} --role=author --user_pass=$(cat /run/secrets/wp_password) --allow-root

fi
exec /usr/sbin/php-fpm7.4 -F;
