FROM php:fpm-alpine

RUN apk update && \
    apk add \
    curl \
    git \
    zip \
    unzip \
    vim \
    postgresql-dev \
    libpq
WORKDIR /usr/bin
RUN curl -s http://getcomposer.org/installer | php && ln -s /usr/bin/composer.phar /usr/bin/composer
RUN docker-php-ext-install pdo_mysql pdo_pgsql
WORKDIR /var/www/html
