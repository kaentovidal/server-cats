docker run -d -p 3307:3306 --name mysql -v /home/dataproc/mysql/:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=1234 mysql:5.7

docker run -d -p 80:80 \
-v /home/dataproc/php/:/var/www/html \
-v /home/dataproc/apache2/:/etc/apache2 \
--name php --link mysql php:7.0-apache

docker cp php:/etc/apache2 ./apache2

docker exec -it php /bin/bash








