#!/bin/bash
# Dockeriza la carpeta hello-bootcamp Antes de hacerlo ¡pruébala en local! Genera la imagen con el VS Code
docker build -t hello-bootcamp:1.0.0 .
docker run -d --name app-hello-bootcamp -p4000:4000 hello-bootcamp:1.0.0

#Subir la aplicacion en registry
while docker images |grep  "hello-bootcamp" 
do
    docker tag hello-bootcamp:1.0.0 gonzalo1986/app-hello-bootcamp:v1.0.0
    docker push gonzalo1986/app-hello-bootcamp:v1.0.0
    break 
done
