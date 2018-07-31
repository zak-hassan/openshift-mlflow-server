#!/bin/sh
VERSION="0.2.1"
MAINTAINERS="Zak Hassan"
COMPONENT="openshift-mlflow-job-runner"

#cleaning up the image folder:

DKR_HUB_NAME=quay.io/zmhassan/mlflow-run:0.2.1
IMAGE_NAME=mlflow-run:0.2.1

# docker run  -e MLFLOW_TRACKING_URI='http://10.15.17.38:5000' -p 5000:5000  docker.io/zmhassan/openshift-mlflow-job-runner
docker   build    --rm -t  $IMAGE_NAME  .

docker tag  $IMAGE_NAME $DKR_HUB_NAME
docker push  $DKR_HUB_NAME
