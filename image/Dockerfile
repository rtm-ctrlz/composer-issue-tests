FROM composer:2.0.8

WORKDIR /app

CMD /app/test.sh

RUN set -x; \
    apk add --no-cache zlib-dev libpng-dev; \
    docker-php-ext-install gd
    
ADD test.sh /app/test.sh

