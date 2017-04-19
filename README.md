PHP Docker image
================

## Purpose

This image is built from the official PHP image with usual extensions activated.
The extensions are:

*   intl
*   opcache
*   pdo_mysql
*   curl
*   mcrypt

Note: The "-dev" variants also activate the xdebug extension.

## Image tags

Available tags:

*   7.0
*   7.0-dev
*   7.1
*   7.1-dev

The "-dev" variants activate the xdebug extension with the remote debugging.

## Settings

You can configure the date.timezone php.ini settings by defining an environment variable DATE_TIMEZONE.
For example, in a docker-compose.yml:

```yml
environment:
    DATE_TIMEZONE: Europe/Copenhagen
```
