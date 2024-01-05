#!/bin/bash

docker compose up -d
# docker run --name mysql -d \
#     -p 3306:3306 \
#     -e MYSQL_ROOT_PASSWORD=admin \
#     -e MYSQL_DATABASE=sqlbox \
#     -e MYSQL_USER=sqlbox \
#     -e MYSQL_PASSWORD=sqlbox \
#     -v ./tmp/mysql:/var/lib/mysql \
#     -v ./my.cnf:/etc/mysql/my.cnf \
#     --restart unless-stopped \
#     mysql:8

sleep 10

# docker exec -i mysql mysql -uroot -padmin <<EOF
# CREATE DATABASE IF NOT EXISTS sqlbox;
# CREATE USER IF NOT EXISTS 'sqlbox'@'%' IDENTIFIED BY 'sqlbox';
# GRANT ALL PRIVILEGES ON sqlbox.* TO 'sqlbox'@'%';
# FLUSH PRIVILEGES;
# EOF

container_ip=$(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' mysql_docker-db-1)
echo "MySQL container IP: $container_ip"


