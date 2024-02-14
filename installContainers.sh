docker run -d -p 3307:3306 --name mysql -v /home/dataproc/mysql/:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=root mysql:5.7

docker run -d --name mongo \
-v /home/dataproc/mongodb/:/data/db \
-e MONGO_INITDB_ROOT_USERNAME=admin \
-e MONGO_INITDB_ROOT_PASSWORD=admin \
-p 27017:27017 \
mongo:4.2


docker run -d -p 80:80 -v /home/dataproc/server-cats/:/var/www/html  --name php --link mysql --link mongo  php:8-apache










