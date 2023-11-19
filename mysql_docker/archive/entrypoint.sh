#!/bin/bash

until mysqladmin ping -h mysqldb --silent; do
    echo 'waiting for mysqld to be connectable...'
    sleep 3
done

mysql -h mysqldb -u root -p"$MYSQL_ROOT_PASSWORD" <<EOF
CREATE USER 'remote'@'%' IDENTIFIED BY '1qaz2wsxQAZWSX';
GRANT ALL PRIVILEGES ON *.* TO 'remote'@'%';
FLUSH PRIVILEGES;
EOF

exec "$@"