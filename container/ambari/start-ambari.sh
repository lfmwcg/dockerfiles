#bin/bash
set -x
docker start a0
docker start a1
docker start a2

brctl addbr br0
ip link set dev br0 up
ip addr add 192.168.2.1/24 dev br0
pipework br0 a0 192.168.2.30/24@192.168.2.1
pipework br0 a1 192.168.2.31/24@192.168.2.1
pipework br0 a2 192.168.2.32/24@192.168.2.1
