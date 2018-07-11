#!/bin/bash
aws configure set default.s3.signature_version s3v4

/usr/bin/mlflow server --artifact-root s3://aicoe --host 0.0.0.0
