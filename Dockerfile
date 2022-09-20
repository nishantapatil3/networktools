FROM alpine:latest

LABEL org.opencontainers.image.source="https://github.com/nishantapatil3/networktools"
LABEL org.opencontainers.image.authors="nishant.apatil3@gmail.com"

# Update and upgrade
RUN apk update && apk upgrade

# Add packages
COPY apk_packages apk_packages
RUN apk add $(cat apk_packages | tr '\n' ' ')

CMD ["/bin/sh"]
