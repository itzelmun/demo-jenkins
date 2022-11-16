FROM php:7.4.30-apache
RUN mkdir -p /var/www/simplesaml_funcionando
COPY ./simplesaml_funcionando /var/www/simplesaml_funcionando/
COPY ./simplesaml_funcionando/000-default.conf  /etc/apache2/sites-available/000-default.conf

RUN mkdir -p /var/www/phpmyadmin
COPY ./phpmyadmin  /var/www/phpmyadmin/
COPY ./phpmyadmin/000-default.conf  /etc/apache2/sites-available/000-default.conf


RUN a2enmod rewrite
#RUN docker-php-ext-install mysqli

RUN service apache2 restart

EXPOSE 80
