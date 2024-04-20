ARG     PHP_VERSION=8
FROM    php:${PHP_VERSION}-cli-alpine

COPY    --from=composer /usr/bin/composer	/usr/bin/composer
COPY    entrypoint.sh /usr/local/bin/serve
RUN     chmod +x /usr/local/bin/serve

ARG     UID=1000
ARG     GID=1000
RUN     addgroup -g ${GID} -S ${UID} && \
        deluser www-data && \
        adduser -S -D -H -u ${UID} -G ${GID} www-data && \
        chown -R ${GID}:${UID} /home/www-data
USER    www-data
WORKDIR /home/www-data/mixup
