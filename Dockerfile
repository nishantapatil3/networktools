FROM alpine:latest

RUN apk update \
    && apk upgrade

RUN apk add iputils
RUN apk add hey
RUN apk add curl

CMD ["/bin/sh"]
