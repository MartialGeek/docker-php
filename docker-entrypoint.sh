#!/bin/sh

set -e

if [ "$1" = "php-fpm" ]; then
    echo "date.timezone = ${DATE_TIMEZONE}" > ${PHP_INI_DIR}/conf.d/date.ini
    echo "short_open_tag = off" > ${PHP_INI_DIR}/conf.d/short_open_tag.ini

    php-fpm
fi
