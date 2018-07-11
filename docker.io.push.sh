#!/bin/sh
VERSION="1.0.0-SNAPSHOT"
MAINTAINERS="Zak Hassan"
COMPONENT="mlflow-server"

#cleaning up the image folder:

DKR_HUB_NAME=docker.io/zmhassan/openshift-mlflow-server
IMAGE_NAME=openshift-mlflow-server

# docker run   -p 5000:5000    docker.io/zmhassan/openshift-mlflow-server
docker   build  --rm -t  $IMAGE_NAME  .

docker tag  $IMAGE_NAME $DKR_HUB_NAME
docker push  $DKR_HUB_NAME
