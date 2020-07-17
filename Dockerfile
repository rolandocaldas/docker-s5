FROM php-fpm-base

RUN apt update && apt install -y git

RUN cd / && composer create-project symfony/skeleton /application

RUN apt purge git
