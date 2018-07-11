#!/bin/bash

echo "Connecting to Tracking Server: "
echo $MLFLOW_TRACKING_URI
aws configure set default.s3.signature_version s3v4
mlflow run https://github.com/databricks/mlflow-example.git -P alpha=5
