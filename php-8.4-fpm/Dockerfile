FROM php:8.4-fpm-alpine3.19

ARG UID

# Apk install
RUN apk --no-cache update && apk upgrade && apk --no-cache add bash nano nodejs npm yarn git sudo shadow python3
RUN usermod -u $UID www-data

# Symfony CLI
RUN curl -1sLf 'https://dl.cloudsmith.io/public/symfony/stable/setup.alpine.sh' | bash
RUN apk add symfony-cli

# Install php extension
ADD --chmod=0755 https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/
RUN install-php-extensions @composer redis opcache ctype iconv pcre session intl pdo_mysql mysqli pdo_oci oci8 soap ldap zip gd xsl pdo_sqlsrv sqlsrv

RUN touch /home/www-data/.bashrc
RUN echo "force_color_prompt=yes /bin/sh" >> /home/www-data/.bashrc