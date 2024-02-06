docker run -d -p 3307:3306 --name mysql -v /home/dataproc/mysql/:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=1234 mysql:5.7

docker run -d -p 80:80 -v /home/dataproc/htdocs/:/var/www/html -v /home/dataproc/default/:/etc/apache2/sites-available/  --name php --link mysql php:7.4-apache
docker run -d -p 80:80 -v /home/dataproc/htdocs/:/var/www/html  --name php --link mysql php:7.0-apache










