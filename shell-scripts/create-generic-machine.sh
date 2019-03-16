#! /bin/bash

read -p "ssh ip addrress : " IPADDR
read -p "ssh user name : " USER
read -p "machine name : " NAME
echo "default port is 22, please port open!"

docker-machine create -d generic --generic-ip-address $IPADDR --generic-ssh-user $USER $NAME 

docker-machine provision $NAME
docker-machine ssh $NAME