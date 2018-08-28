FROM php:7.2-fpm-stretch

RUN apt update; \
    apt upgrade -y ; \
    apt install -y \
      libbz2-dev \
      libfreetype6-dev \
      libjpeg-dev \
      libpng-dev \
      libwebp-dev \
      libxpm-dev \
      libzip-dev \
      ; \
    apt clean ;

RUN docker-php-ext-install \
      mysqli \
      bz2 \
      gd \
      opcache \
      zip \
      ;
