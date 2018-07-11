#!/bin/bash

echo "Connecting to Tracking Server: "
echo $MLFLOW_TRACKING_URI

mlflow run https://github.com/databricks/mlflow-example.git -P alpha=5
