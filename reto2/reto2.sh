#!/bin/bash

docker run -d --name bbdd -p 3306:3306 -e "MYSQL_ROOT_PASSWORD=12345678" -e "MYSQL_DATABASE=prueba" -e "MYSQL_USER=invitado" -e "MYSQL_PASSWORD=123456" mariadb
mysql -u root -h 127.0.0.1 -p12345678 --port 3306
