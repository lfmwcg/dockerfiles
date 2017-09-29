#bin/bash

set -x

docker exec -it h0 /bin/bash /usr/local/hadoop/sbin/stop-dfs.sh
docker exec -it h0 /bin/bash /usr/local/hadoop/sbin/stop-yarn.sh

docker exec -it h0 jps
docker exec -it h1 jps
docker exec -it h2 jps

docker stop h0
docker stop h1
docker stop h2

ip link set dev br0 down
brctl delbr br0

docker ps -a
