
FROM centos:latest

USER root



RUN yum install -y bzip2 wget git \
&& curl https://bootstrap.pypa.io/get-pip.py | python - \
&& pip install mlflow \
&& wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh \
&& bash Miniconda3-latest-Linux-x86_64.sh -b -p /opt/conda

ENV PATH="/opt/conda/bin:${PATH}"

COPY entrypoint.sh /etc/entrypoint.sh
EXPOSE 5000
ENTRYPOINT ["/etc/entrypoint.sh"]
