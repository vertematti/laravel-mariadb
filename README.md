# laravel-mariadb
docker-compose with Laravel (9.47.0), PHP (8.2.1), MariaDB (10.10.2) and phpMyAdmin (5.2.0) built in 01/16/2023.

--------------------------
Servername set like "dev.local" in "/webserver_init/conf.d/001-site.conf"; at Windows systems must be changed.

docker exec -it servidor_web_apache bash -l

composer install

Change filename .env.example to .env

php artisan storage:link  

php artisan config:clear

php artisan key:generate

composer install

http://localhost

----------------------------

phpMyAdmin

http://localhost:8001

Database: om_site

User: 	  om_user

Password: om_passwd
