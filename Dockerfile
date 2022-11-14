FROM php:8.1-apache
RUN mkdir -p /var/www/simplesaml_funcionando
COPY . /var/www/simplesaml_funcionando/
COPY ./000-default.conf  /etc/apache2/sites-available/000-default.conf

RUN a2enmod rewrite
#RUN docker-php-ext-install mysqli

RUN service apache2 restart

EXPOSE 80

