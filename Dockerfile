FROM php:7.2-fpm-stretch

RUN apt update; \
    apt upgrade -y ; \
    apt install -y \
      curl \
      libbz2-dev \
      libcurl4-openssl-dev \
      libfreetype6-dev \
      libjpeg-dev \
      libpng-dev \
      libwebp-dev \
      libxml2-dev \
      libxpm-dev \
      libzip-dev \
      vim \
      ; \
    apt clean ;

RUN CFLAGS="-I/usr/src/php" docker-php-ext-install \
      bz2 \
      ctype \
      curl \
      gd \
      mysqli \
      opcache \
      xml \
      xmlreader \
      zip \
      ;
