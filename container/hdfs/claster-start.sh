#bin/bash
set -x
docker start h0
docker start h1
docker start h2

brctl addbr br0
ip link set dev br0 up
ip addr add 192.168.2.1/24 dev br0
pipework br0 h0 192.168.2.20/24
pipework br0 h1 192.168.2.21/24
pipework br0 h2 192.168.2.22/24

docker exec -it h0 rm -r /usr/local/hadoop/etc
docker exec -it h1 rm -r /usr/local/hadoop/etc
docker exec -it h2 rm -r /usr/local/hadoop/etc

docker cp etc/ h0:/usr/local/hadoop/
docker cp etc/ h1:/usr/local/hadoop/
docker cp etc/ h2:/usr/local/hadoop/

