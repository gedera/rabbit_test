#!/bin/zsh
# don't force sudo, use it only if not in docker group
docker_command=$(if [[ "$(groups $USER)" =~ "docker" ]]; then echo "docker";else echo "sudo docker"; fi)

service=$1
shift
container=$($docker_command ps|grep $service | awk '{ print $1 }')

echo "$docker_command exec -i $container bash < $@"
$docker_command exec -i $container bash < $@
