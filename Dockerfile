FROM alpine:latest

LABEL org.opencontainers.image.source="https://github.com/nishantapatil3/networktools"
LABEL org.opencontainers.image.authors="nishant.apatil3@gmail.com"

# Update and upgrade
RUN apk update && apk upgrade

# Add packages
COPY configs/apk_packages apk_packages
RUN apk add --no-cache $(cat apk_packages | tr '\n' ' ')

# Run install script
COPY configs/install_script.sh /install_script.sh
RUN /install_script.sh

# Copy predefined configs
COPY configs/vimrc /root/.vimrc

# nginx server
COPY configs/nginx.conf /etc/nginx/nginx.conf
COPY configs/index.html /var/lib/nginx/html/index.html
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
