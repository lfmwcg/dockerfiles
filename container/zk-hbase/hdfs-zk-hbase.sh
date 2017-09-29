#bin/bash

ssh h0 "cd /usr/local/hadoop/ && sbin/start-dfs.sh && sbin/start-yarn.sh && exit"

ssh h0 "cd /usr/local/hbase/ && bin/start-hbase.sh && exit"

docker exec -it h0 jps
docker exec -it h1 jps
docker exec -it h2 jps

