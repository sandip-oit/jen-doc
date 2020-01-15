FROM ubuntu

RUN apt update -y
RUN apt install apache2 -y

COPY ./www /var/www/html

EXPOSE 80
CMD apachectl -D FOREGROUND
