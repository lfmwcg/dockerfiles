#bin/bash

set -x


docker exec -it a0 jps
docker exec -it a1 jps
docker exec -it a2 jps

docker stop a0
docker stop a1
docker stop a2

ip link set dev br0 down
brctl delbr br0 

docker ps -a
