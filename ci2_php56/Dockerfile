FROM php:5.6-apache

COPY ./000-default.conf  /etc/apache2/sites-available

# https://lists.debian.org/debian-devel-announce/2023/03/msg00006.html
# https://stackoverflow.com/questions/76094428/debian-stretch-repositories-404-not-found
RUN sed -i \
    -e 's/deb.debian.org/archive.debian.org/g' \
    -e 's|security.debian.org|archive.debian.org/|g' \
    -e '/stretch-updates/d' \
    /etc/apt/sources.list

RUN apt-get update \
    && docker-php-ext-install mysql mysqli pdo pdo_mysql \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
