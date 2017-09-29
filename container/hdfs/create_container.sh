#/bin/bash

docker create \
-h h0 \
--net=none \
--name h0 \
--add-host master:192.168.2.1 \
--add-host h0:192.168.2.20 \
--add-host h1:192.168.2.21 \
--add-host h2:192.168.2.22 \
centos:hadoop

docker create \
-h h1 \
--net=none \
--name h1 \
--add-host master:192.168.2.1 \
--add-host h0:192.168.2.20 \
--add-host h1:192.168.2.21 \
--add-host h2:192.168.2.22 \
centos:hadoop

docker create \
-h h2 \
--net=none \
--name h2 \
--add-host master:192.168.2.1 \
--add-host h0:192.168.2.20 \
--add-host h1:192.168.2.21 \
--add-host h2:192.168.2.22 \
centos:hadoop
