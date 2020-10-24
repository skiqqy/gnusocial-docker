#!/bin/sh
# Start everything
/usr/sbin/lighttpd -f /etc/lighttpd/lighttpd.conf && echo "Started WebServer" || echo "Error Starting web"
echo "Starting DB"
#/db_init.sh
mysqld --user=root --datadir='./data' &

# Just temporary
sleep 15
echo "CREATE DATABASE social;" | mariadb
echo "GRANT ALL on social.* TO 'social'@'localhost' IDENTIFIED BY 'social';" | mariadb

php-fpm7 && echo "Started php" || echo "Error starting php"

mysqladmin -u root password toor # Giga scuffed lol
sh # Spawn a new process
