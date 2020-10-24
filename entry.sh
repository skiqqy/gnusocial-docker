#!/bin/sh
/usr/sbin/lighttpd -f /etc/lighttpd/lighttpd.conf && echo "Started WebServer" || echo "Error Starting web"
echo "Starting DB"
mysqld --user=root --datadir='./data' &
php-fpm7 && echo "Started php" || echo "Error starting php"

# Spawn a new process
sh
