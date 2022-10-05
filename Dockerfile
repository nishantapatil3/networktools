FROM alpine:latest

LABEL org.opencontainers.image.source="https://github.com/nishantapatil3/networktools"
LABEL org.opencontainers.image.authors="nishant.apatil3@gmail.com"

# Update and upgrade
RUN apk update && apk upgrade

# Add packages
COPY apk_packages apk_packages
RUN apk add --no-cache $(cat apk_packages | tr '\n' ' ')

# Copy predefined configs
COPY configs/vimrc /root/.vimrc

CMD ["/bin/sh"]
