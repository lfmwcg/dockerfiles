#bin/bash

set -x

docker exec -it k1 /bin/bash /usr/local/zookeeper/bin/zkServer.sh stop
docker exec -it k2 /bin/bash /usr/local/zookeeper/bin/zkServer.sh stop
docker exec -it k3 /bin/bash /usr/local/zookeeper/bin/zkServer.sh stop

docker exec -it k1 jps
docker exec -it k2 jps
docker exec -it k3 jps

docker stop k1
docker stop k2
docker stop k3

docker ps -a
