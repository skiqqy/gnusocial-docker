#!/bin/sh
mysqld --user=root --datadir='./data' &
sleep 5
echo "Attempting to connect to db"
mysqladmin -u "root" -p create social
mysqladmin -u root password toor
echo "GRANT ALL on social.* TO 'social'@'localhost' IDENTIFIED BY 'social';" | mariadb
kill -9 $(pidof mysqld)
