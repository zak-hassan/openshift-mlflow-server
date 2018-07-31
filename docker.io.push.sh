#!/bin/sh
VERSION="0.2.1"
MAINTAINERS="Zak Hassan"
COMPONENT="mlflow-server"

#cleaning up the image folder:

DKR_HUB_NAME=quay.io/zmhassan/mlflow:0.2.1
IMAGE_NAME=mlflow:0.2.1

# docker run   -p 5000:5000    docker.io/zmhassan/openshift-mlflow-server
docker   build  --rm -t  $IMAGE_NAME  .

docker tag  $IMAGE_NAME $DKR_HUB_NAME
docker push  $DKR_HUB_NAME
