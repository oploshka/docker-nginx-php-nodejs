FROM php:7.4-fpm

MAINTAINER Alexey Kibalnikov <alexey.kibalnikov@gmail.com>

RUN apt-get update && apt-get install -y --fix-missing apt-utils git zip unzip zlib1g-dev libzip-dev \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd bcmath zip sockets pdo_mysql

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- \
        --filename=composer \
        --install-dir=/usr/local/bin && \
        echo "alias composer='composer'" >> /root/.bashrc && \
        composer
    
CMD ["php-fpm"]
