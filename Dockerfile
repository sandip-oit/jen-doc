version: '3'
services:
    php-apache:
        image: php:7.2.1-apache
        ports:
            - 80:80
        volumes:
            - ./www:/var/www/html:z
       
