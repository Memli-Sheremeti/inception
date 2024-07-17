#!bin/bash

# cd /var/www/html
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

chmod +x wp-cli.phar

mv	wp-cli.phar /usr/bin/wp

wp core download --allow-root

sleep 3

wp config create --dbname=wordpress --dbuser=wpuser --dbpass=password --dbhost="mariadb" --allow-root

wp core install --url=localhost --title=inception --admin_user=admin --admin_password=admin --admin_email=admin@admin.com --allow-root

exec /usr/sbin/php-fpm7.4 -F;


# wp core download --allow-root

# sleep 3
# wp core config    --dbname=MYSQL_DATABASE\
# 				--dbhost="mariadb"\
# 				--dbuser=MYSQL_USER\
# 				--dbpass=MYSQL_PASS\
# 				--allow-root

# wp core install --url=acronert.42.fr\
# 				--title=WP_TITLE\
# 				--admin_user=WP_ADMIN\
# 				--admin_password=WP_ADMIN_PASS\
# 				--admin_email=WP_ADMIN_EMAIL\
# 				--allow-root

# wp user create WP_USER WP_USER_EMAIL --role=author\
# 				--user_pass=WP_USER_PASS\
# 				--allow-root

# exec /usr/sbin/php-fpm7.4 -F;