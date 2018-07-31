#!/bin/bash
#/usr/bin/aws configure set default.s3.signature_version s3v4
echo "Using bucket: fix 1"
echo $MLFLOW_BUCKET_NAME

/usr/bin/mlflow server --artifact-root s3://$MLFLOW_BUCKET_NAME --host 0.0.0.0 --file-store /tmp/mlruns

