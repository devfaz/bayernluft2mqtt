#!/bin/bash
set -e -o pipefail -u

TAG=$1

docker build --pull -t $IMAGE:$TAG .
docker push $IMAGE:$TAG