FROM php:7.0-fpm

ENV DATE_TIMEZONE Europe/Paris

RUN apt-get update && apt-get install -y \
  libicu-dev \
  zlib1g-dev \
  libmemcached-dev \
  libcurl4-openssl-dev \
  libmcrypt-dev \
&& docker-php-ext-install -j$(nproc) intl opcache pdo_mysql curl mcrypt \
&& pecl install xdebug \
&& docker-php-ext-enable xdebug

COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["docker-entrypoint.sh"]
WORKDIR /var/www/html
CMD ["php-fpm"]