#!/bin/zsh
container=$(sudo docker ps|grep $1 | awk '{ print $1 }')
echo "Attaching..."

command=$2 || "/bin/bash"


docker exec -it $container $command
