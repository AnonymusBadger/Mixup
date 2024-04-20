FROM    php:8-cli-alpine
COPY    --from=composer /usr/bin/composer	/usr/bin/composer

ARG     UNAME=server
ARG     UID=1000
ARG     GID=1000
RUN     addgroup -g ${GID} -S ${UID}
RUN     adduser -S -D -u ${UID} -G ${GID} ${UNAME}
WORKDIR /home/server/www
COPY    entrypoint.sh /usr/local/bin/serve
RUN     chmod +x /usr/local/bin/serve
