#bin/bash
set -x

docker exec -it hadoop0 /bin/bash /usr/local/hbase/bin/start-hbase.sh

docker exec -it hadoop0 jps
docker exec -it hadoop1 jps
docker exec -it hadoop2 jps
