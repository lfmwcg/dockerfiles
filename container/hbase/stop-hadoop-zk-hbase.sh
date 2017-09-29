#bin/bash

set -x


docker exec -it hadoop0 /bin/bash /usr/local/hbase/bin/stop-hbase.sh

docker exec -it hadoop0 /bin/bash /usr/local/zookeeper/bin/zkServer.sh stop
docker exec -it hadoop1 /bin/bash /usr/local/zookeeper/bin/zkServer.sh stop
docker exec -it hadoop2 /bin/bash /usr/local/zookeeper/bin/zkServer.sh stop

docker exec -it hadoop0 /bin/bash /usr/local/hadoop/sbin/stop-dfs.sh
docker exec -it hadoop0 /bin/bash /usr/local/hadoop/sbin/stop-yarn.sh

docker exec -it hadoop0 jps
docker exec -it hadoop1 jps
docker exec -it hadoop2 jps

docker stop hadoop0
docker stop hadoop1
docker stop hadoop2

docker ps -a
