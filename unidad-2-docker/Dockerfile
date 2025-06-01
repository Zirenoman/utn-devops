FROM php:7.4-apache

RUN docker-php-ext-install pdo pdo_mysql

# Habilitamos mod_rewrite para frameworks como Laravel (si fuera necesario)
RUN a2enmod rewrite

COPY ./app /var/www/html/

# Configuramos permisos
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html
