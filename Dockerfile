version: '3'
services:
    php-apache:
        image: php:7.2.1-apache
        ports:
            - 80:80
        volumes:
            - ./www:/var/www/html:z
        links:
            - 'mariadb'

    mariadb:
        image: mariadb:10.1
        volumes:
            - mariadb:/var/lib/mysql
        environment:
            TZ: "Europe/Rome"
            MYSQL_ALLOW_EMPTY_PASSWORD: "no"
            MYSQL_ROOT_PASSWORD: "sandip"
            MYSQL_USER: 'sandip'
            MYSQL_PASSWORD: 'sandip'
            MYSQL_DATABASE: 'sandip'

volumes:
    mariadb:
