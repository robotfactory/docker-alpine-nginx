# Thanks to nimmis for making something useful
FROM robotfactory/alpine-micro:3.7

MAINTAINER robotfactory <robotshoelaces@gmail.com>

RUN apk update && apk upgrade && \
    apk add nginx && \
    mkdir /web && \
    rm -rf /var/cache/apk/*


COPY rootfs /

VOLUME /web

EXPOSE 80 443

