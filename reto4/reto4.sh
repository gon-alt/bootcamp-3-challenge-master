#!/bin/bash

docker build -t simple-apache:new .
docker run -d --name my_apache -p 5050:80 simple-apache:new

docker inspect simple-apache:new