FROM php:7.3-apache

COPY ./000-default.conf  /etc/apache2/sites-available

RUN apt-get update
RUN docker-php-ext-install mbstring pdo pdo_mysql
RUN a2enmod rewrite && service apache2 restart
RUN apt-get install -y git
RUN apt-get install -y mysql-client
RUN apt-get install zip unzip
RUN apt-get install nano
