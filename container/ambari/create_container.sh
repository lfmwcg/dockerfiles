#/bin/bash

docker create \
-h a0 \
--net=none \
--name a0 \
--add-host master:192.168.2.1 \
--add-host a0:192.168.2.30 \
--add-host a1:192.168.2.31 \
--add-host a2:192.168.2.32 \
centos:jdk

docker create \
-h a1 \
--net=none \
--name a1 \
--add-host master:192.168.2.1 \
--add-host a0:192.168.2.30 \
--add-host a1:192.168.2.31 \
--add-host a2:192.168.2.32 \
centos:jdk

docker create \
-h a2 \
--net=none \
--name a2 \
--add-host master:192.168.2.1 \
--add-host a0:192.168.2.30 \
--add-host a1:192.168.2.31 \
--add-host a2:192.168.2.32 \
centos:jdk
