# openshift-mlflow-server

MLFlow Server running on OpenShift

#Usage

To run MLFlow you will need to add the following environment variables or mount `~/.aws` folder.

```bash
AWS_ACCESS_KEY_ID – AWS access key.

AWS_SECRET_ACCESS_KEY – AWS secret key. Access and secret key variables override credentials stored in credential and config files.
```

To run with docker execute

```
 docker run  -p 5000:5000 --name tracking-server docker.io/zmhassan/openshift-mlflow-server
```

Note: You will need to pass in the tracking server url in the following environment variable `MLFLOW_TRACKING_URI`. See example below:

```
  docker run  -e MLFLOW_TRACKING_URI='http://tracking-server:5000' --name training-job  --link tracking-server   docker.io/zmhassan/openshift-mlflow-job-runner
 ```

Instructions for openshift coming very soon.
