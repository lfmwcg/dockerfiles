#bin/bash
set -x
docker start k1
docker start k2
docker start k3

brctl addbr br0
ip link set dev br0 up
ip addr add 192.168.2.1/24 dev br0
pipework br0 k1 192.168.2.20/24
pipework br0 k2 192.168.2.21/24
pipework br0 k3 192.168.2.22/24


docker exec -it k1 /bin/bash /root/runhosts.sh
docker exec -it k2 /bin/bash /root/runhosts.sh
docker exec -it k3 /bin/bash /root/runhosts.sh 

