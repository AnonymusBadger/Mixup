ARG     PHP_VERSION=8
FROM    php:${PHP_VERSION}-apache

ENV APACHE_DOCUMENT_ROOT /var/www/html/public

RUN sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf
RUN sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf

ARG     UID=1000
RUN     addgroup --uid ${UID} app && \
            usermod -u ${UID} www-data
RUN     a2enmod rewrite
