# entrypoint.sh
#!/bin/sh

# init
openrc
touch /run/openrc/softlevel

# start nginx
nginx

printf "\nHello, World!\n"

# Start shell
/bin/sh
