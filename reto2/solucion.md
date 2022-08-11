### Arrancar un contenedor que se llame `bbdd` y que ejecute una instancia de la imagen **mariadb** para que sea accesible desde el puerto 3306. Establecer variables de entorno.

```
  docker run -d --name bbdd -p 3306:3306 -e "MYSQL_ROOT_PASSWORD=12345678" -e "MYSQL_DATABASE=prueba" -e "MYSQL_USER=invitado" -e "MYSQL_PASSWORD=123456" mariadb

```
### Pantallazo de la conexión al servidor de base de datos con el usuario creado y de la base de datos `prueba` creada automáticamente.

```
mysql -u root -h 127.0.0.1 -p12345678 --port 3306

```

![Esta es una imagen](/reto2/img/1.png)

![Esta es una imagen](/reto2/img/2.png)

### Pantallazo donde se comprueba que no se puede borrar la imagen `mariadb` mientras el contenedor `bbdd` está creado.

```bash
sudo docker rmi mariadb
```
![Esta es una imagen](/reto2/img/3.png)
