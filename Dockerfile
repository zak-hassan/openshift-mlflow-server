
FROM centos:latest

USER root

RUN  curl https://bootstrap.pypa.io/get-pip.py | python - \
 && pip install mlflow



COPY entrypoint.sh /etc/entrypoint.sh
EXPOSE 5000
ENTRYPOINT ["/etc/entrypoint.sh"]
