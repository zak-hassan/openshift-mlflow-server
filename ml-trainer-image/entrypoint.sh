#!/bin/bash

echo "Connecting to Tracking Server: "
echo $MLFLOW_TRACKING_URI
echo $MLFLOW_GIT_REPO
echo $MLFLOW_ARGS
mlflow run $MLFLOW_GIT_REPO -P $MLFLOW_ARGS
exit
