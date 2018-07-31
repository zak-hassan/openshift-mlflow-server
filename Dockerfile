
FROM centos:latest

USER root

RUN  curl https://bootstrap.pypa.io/get-pip.py | python - \
 && pip install 'mlflow==0.2.1' && pip install awscli

ENV MLFLOW_BUCKET_NAME=aicoe

COPY entrypoint.sh /etc/entrypoint.sh
EXPOSE 5000
ENTRYPOINT ["/etc/entrypoint.sh"]
