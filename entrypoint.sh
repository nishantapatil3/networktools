# entrypoint.sh
#!/bin/sh

# init
openrc
touch /run/openrc/softlevel

# start nginx
echo "Starting nginx"
nginx
echo "Started nginx"

printf "\nHello from networktools!\n"

# Start shell
/bin/sh
