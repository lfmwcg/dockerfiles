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

#docker exec -it h0 rm -r /usr/local/zookeeper/conf/zoo.cfg
#docker exec -it h1 rm -r /usr/local/zookeeper/conf/zoo.cfg
#docker exec -it h2 rm -r /usr/local/zookeeper/conf/zoo.cfg

#docker cp conf/zoo.cfg h0:/usr/local/zookeeper/conf/zoo.cfg
#docker cp conf/zoo.cfg h1:/usr/local/zookeeper/conf/zoo.cfg
#docker cp conf/zoo.cfg h2:/usr/local/zookeeper/conf/zoo.cfg

docker exec -it h0 rm -r /usr/local/hbase/conf/hbase-env.sh
docker exec -it h1 rm -r /usr/local/hbase/conf/hbase-env.sh
docker exec -it h2 rm -r /usr/local/hbase/conf/hbase-env.sh

docker cp conf/hbase-env.sh h0:/usr/local/hbase/conf/hbase-env.sh
docker cp conf/hbase-env.sh h1:/usr/local/hbase/conf/hbase-env.sh
docker cp conf/hbase-env.sh h2:/usr/local/hbase/conf/hbase-env.sh

docker exec -it h0 rm -r /usr/local/hbase/conf/hbase-site.xml
docker exec -it h1 rm -r /usr/local/hbase/conf/hbase-site.xml
docker exec -it h2 rm -r /usr/local/hbase/conf/hbase-site.xml

docker cp conf/hbase-site.xml h0:/usr/local/hbase/conf/hbase-site.xml
docker cp conf/hbase-site.xml h1:/usr/local/hbase/conf/hbase-site.xml
docker cp conf/hbase-site.xml h2:/usr/local/hbase/conf/hbase-site.xml

docker exec -it h0 rm -r /usr/local/hbase/conf/regionservers
docker exec -it h1 rm -r /usr/local/hbase/conf/regionservers
docker exec -it h2 rm -r /usr/local/hbase/conf/regionservers

docker cp conf/regionservers h0:/usr/local/hbase/conf/regionservers
docker cp conf/regionservers h1:/usr/local/hbase/conf/regionservers
docker cp conf/regionservers h2:/usr/local/hbase/conf/regionservers

#docker exec -it h0 mkdir /var/zookeeper
#docker exec -it h1 mkdir /var/zookeeper
#docker exec -it h2 mkdir /var/zookeeper

#docker exec -it h0 rm -rf /var/zookeeper/myid
#docker exec -it h1 rm -rf /var/zookeeper/myid
#docker exec -it h2 rm -rf /var/zookeeper/myid

#echo 0 > ./conf/myid
#docker cp ./conf/myid h0:/var/zookeeper/myid
#echo 1 > ./conf/myid
#docker cp ./conf/myid h1:/var/zookeeper/myid
#echo 2 > ./conf/myid
#docker cp ./conf/myid h2:/var/zookeeper/myid



