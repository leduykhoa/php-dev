ARG PHP_VERSION

FROM php:7.4-apache

RUN apt-get update && apt-get install -y wget curl 
RUN apt-get install -y libc-dev pkg-config libonig-dev
RUN apt-get install -y zlib1g-dev libzip-dev libcurl3-openssl-dev libxml2-dev libmcrypt-dev \
    libpq-dev \
    libpng-dev \
    libfreetype6-dev \
    libjpeg62-turbo-dev libmagickwand-dev

RUN pecl install redis-5.1.1 \
    && pecl install mcrypt-1.0.3 \
    && pecl install xdebug-2.8.1 \
    && pecl install imagick \
    && docker-php-ext-install xml \
    && docker-php-ext-install gettext \
    && docker-php-ext-install gd \
    && docker-php-ext-install intl \
    && docker-php-ext-install zip \
    && docker-php-ext-install pcntl \
    && docker-php-ext-install pdo \
    && docker-php-ext-install pdo_mysql \
    && docker-php-ext-install mysqli \
    && docker-php-ext-install soap \
    && docker-php-ext-install -j$(nproc) xmlrpc \
    && docker-php-ext-enable redis \
    && docker-php-ext-enable gettext \
    && docker-php-ext-enable gd \
    && docker-php-ext-enable intl \
    && docker-php-ext-enable xdebug \
    && docker-php-ext-enable mcrypt \
    && docker-php-ext-enable mysqli \
    && docker-php-ext-enable imagick \
    && docker-php-ext-enable pdo_mysql


RUN curl --silent --show-error https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get install -y nodejs

COPY /run.sh /opt/run.sh
RUN chmod +x /opt/run.sh

EXPOSE 80 443

CMD ["/opt/run.sh"]