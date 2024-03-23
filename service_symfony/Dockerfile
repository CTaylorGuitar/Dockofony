FROM php:8.2.14-apache

COPY ./000-default.conf  /etc/apache2/sites-available

ARG XDEBUG=false
RUN if [ "${XDEBUG}" = true ]; then \
        pecl install xdebug && docker-php-ext-enable xdebug; \
        { \
            echo "[xdebug]"; \
            echo "xdebug.mode=develop,debug,coverage"; \
            echo "xdebug.discover_client_host = true"; \
            echo "xdebug.client_host=172.17.0.1"; \
            echo "xdebug.client_port = 9003"; \
            echo "xdebug.max_nesting_level = 512"; \
            echo "xdebug.start_with_request=yes"; \
        } >> "$PHP_INI_DIR"/conf.d/xdebug.ini \
    ;fi

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        git \
        default-mysql-client \
        zip \
        unzip \
        wkhtmltopdf \
    && rm -rf /var/lib/apt/lists/*sdf

RUN a2enmod rewrite && service apache2 restart

RUN docker-php-ext-install mysqli pdo pdo_mysql

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
