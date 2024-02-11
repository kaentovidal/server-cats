docker run -d -p 3307:3306 --name mysql -v /home/dataproc/mysql/:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=root mysql:5.7

docker run --name mongo \
-v /home/dataproc/mongodb/:/data/db \
-e MONGO_INITDB_ROOT_USERNAME=admin \
-e MONGO_INITDB_ROOT_PASSWORD=admin \
-p 27017:27017 \
mongo:4.0 --auth --tlsMode requireSSL


docker run -d -p 80:80 -v /home/dataproc/htdocs/:/var/www/html  --name php --link mysql --link mongo  php:7.4-apache










