#!/bin/bash


docker build -t bootcamp_nginx .

docker volume create static_content

docker run -d --name bootcamp_container -v static_content:/usr/share/nginx/html -p 8080:80 bootcamp_nginx 

docker tag bootcamp_nginx gonzalo1986/bootcamp_nginx:v1.0.0

docker push gonzalo1986/bootcamp_nginx:v1.0.0