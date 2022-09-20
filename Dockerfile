FROM alpine:latest

RUN apk update \
    && apk upgrade

COPY apk_packages apk_packages

RUN apk add $(cat apk_packages | tr '\n' ' ')

CMD ["/bin/sh"]
