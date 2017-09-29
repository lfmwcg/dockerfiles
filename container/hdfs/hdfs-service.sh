#bin/bash

docker exec -it h0 /bin/bash /usr/local/hadoop/sbin/start-dfs.sh
docker exec -it h0 /bin/bash /usr/local/hadoop/sbin/start-yarn.sh
docker exec -it h0 jps
docker exec -it h1 jps
docker exec -it h2 jps

