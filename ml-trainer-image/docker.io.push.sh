#!/bin/sh
VERSION="1.0.0-SNAPSHOT"
MAINTAINERS="Zak Hassan"
COMPONENT="openshift-mlflow-job-runner"

#cleaning up the image folder:

DKR_HUB_NAME=docker.io/zmhassan/openshift-mlflow-job-runner
IMAGE_NAME=openshift-mlflow-job-runner

# docker run  -e MLFLOW_TRACKING_URI='http://10.15.17.38:5000' -p 5000:5000  docker.io/zmhassan/openshift-mlflow-job-runner
docker   build  --rm -t  $IMAGE_NAME  .

docker tag  $IMAGE_NAME $DKR_HUB_NAME
docker push  $DKR_HUB_NAME
