FROM php:8.2-fpm-alpine3.16

RUN curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer