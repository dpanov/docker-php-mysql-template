FROM php:7.1.7-apache
MAINTAINER Varianto:25 <mail@varianto25.com>

# Copy local files to the proper docker container folder
ADD ./ /var/www/html
WORKDIR /var/www/html

# Enable mod_rewrite
RUN a2enmod rewrite
RUN service apache2 restart

# RUN apt-get -qq update && apt-get -qq install -y --no-install-recommends apt-utils vim

RUN docker-php-ext-install pdo_mysql