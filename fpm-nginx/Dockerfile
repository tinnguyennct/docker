FROM php:7.4.25-fpm-alpine

ENV RUN_DEPS \
    zlib \
    libzip

ENV BUILD_DEPS \
    make \
    build-base \
    autoconf \
    zlib-dev \
    libzip-dev \
    libxml2-dev \
    curl-dev

ENV PHP_EXTENSIONS \
    opcache \
    zip \
    curl \
    xml \
    bcmath \
    json \
    pdo_mysql \
    bcmath

ENV PECL_EXTENSIONS \
    redis

RUN apk add --no-cache --virtual .run-deps $RUN_DEPS \
        && apk add --no-cache --virtual .build-deps $BUILD_DEPS \
        && apk add --no-cache pcre-dev $PHPIZE_DEPS \
        && pecl install $PECL_EXTENSIONS \
        && docker-php-ext-install -j "$(nproc)" $PHP_EXTENSIONS \
        && docker-php-ext-enable $PECL_EXTENSIONS \
        && apk del .build-deps