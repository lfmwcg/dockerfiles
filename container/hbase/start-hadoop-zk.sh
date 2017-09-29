#bin/bash
set -x
docker start hadoop0
docker start hadoop1
docker start hadoop2

brctl addbr br0
ip link set dev br0 up
ip addr add 192.168.2.1/24 dev br0
pipework br0 hadoop0 192.168.2.10/24
pipework br0 hadoop1 192.168.2.11/24
pipework br0 hadoop2 192.168.2.12/24


docker exec -it hadoop0 /bin/bash /root/runhosts.sh
docker exec -it hadoop1 /bin/bash /root/runhosts.sh
docker exec -it hadoop2 /bin/bash /root/runhosts.sh 



docker exec -it hadoop0 /bin/bash /usr/local/hadoop/sbin/start-dfs.sh
docker exec -it hadoop0 /bin/bash /usr/local/hadoop/sbin/start-yarn.sh

docker exec -it hadoop0 /bin/bash /usr/local/zookeeper/bin/zkServer.sh start
docker exec -it hadoop1 /bin/bash /usr/local/zookeeper/bin/zkServer.sh start
docker exec -it hadoop2 /bin/bash /usr/local/zookeeper/bin/zkServer.sh start

docker exec -it hadoop0 jps
docker exec -it hadoop1 jps
docker exec -it hadoop2 jps
