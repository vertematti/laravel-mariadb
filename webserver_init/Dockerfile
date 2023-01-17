FROM php:apache

RUN apt-get update \
	&& apt-get install -y \
		vim \
		zlib1g-dev \
		libzip-dev \
		libpng-dev \
		libssl-dev \
		libicu-dev \
		git \
		unzip \
		apache2-utils \
		wget \
		libpcre3 \
		libpcre3-dev \
		libxml++2.6-dev \
		apt-utils \
		xvfb \
		libfontconfig \
		wkhtmltopdf \
	&& apt-get upgrade -y \
	&& apt-get clean; 

RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*

RUN a2enmod rewrite expires ssl headers

RUN docker-php-ext-install zip

RUN docker-php-ext-install mysqli \
	&& docker-php-ext-enable mysqli

RUN docker-php-ext-install pdo pdo_mysql

RUN docker-php-ext-install gd

RUN docker-php-ext-install dom

RUN docker-php-ext-install xmlwriter

RUN docker-php-ext-install ftp

RUN docker-php-ext-configure intl

RUN docker-php-ext-install intl

RUN docker-php-ext-install bcmath

RUN pecl install xdebug \
    && docker-php-ext-enable xdebug

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer 

RUN composer self-update

RUN adduser --disabled-password --gecos '' appuser

USER appuser

RUN composer global require squizlabs/php_codesniffer

USER root

RUN composer global require "phpunit/phpunit"

ENV PATH /root/.composer/vendor/bin:$PATH

RUN ln -s /root/.composer/vendor/bin/phpunit /usr/bin/phpunit

RUN ln -s /usr/bin/wkhtmltopdf /usr/local/bin/wkhtmltopdf

RUN ln -s /usr/bin/wkhtmltoimage /usr/local/bin/wkhtmltoimage

RUN unlink /etc/apache2/sites-enabled/000-default.conf

RUN rm -rf /etc/apache2/sites-available/000-default.conf

COPY conf.d/001-site.conf /etc/apache2/sites-available/

RUN ln -s /etc/apache2/sites-available/001-site.conf /etc/apache2/sites-enabled/001-site.conf

COPY php/php.ini /usr/local/etc/php/

COPY php/xdebug.ini /usr/local/etc/php/conf.d/

COPY php/error_reporting.ini /usr/local/etc/php/conf.d/

