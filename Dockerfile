FROM php:7.2-fpm-stretch

RUN apt update; \
    apt upgrade -y ; \
    apt install -y \
      libfreetype6-dev \
      libjpeg-dev \
      libpng-dev \
      libwebp-dev \
      libxpm-dev \
      zip \
      ; \
    apt clean ;

RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
