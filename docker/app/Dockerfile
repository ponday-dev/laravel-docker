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
RUN composer config -g repos.packagist composer https://packagist.jp
RUN composer global require hirak/prestissimo
WORKDIR /var/www/html
