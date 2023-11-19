#!/bin/bash

docker run --name mysql -d \
    -p 3306:3306 \
    -e MYSQL_ROOT_PASSWOR=admin \
    -v mysql:/var/lib/mysql \
    --restart unless-stopped \
    mysql:8
