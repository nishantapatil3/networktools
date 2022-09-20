FROM alpine:latest

RUN apk update
RUN apk add iputils
RUN apk add hey

CMD ["/bin/sh"]