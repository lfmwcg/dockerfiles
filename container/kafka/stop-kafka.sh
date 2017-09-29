#bin/bash

set -x

docker stop k1
docker stop k2
docker stop k3

docker ps -a
