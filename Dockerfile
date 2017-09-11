############################################################
# Dockerfile to run graphlab
# Based on Miniconda2 Image
############################################################

FROM continuumio/miniconda3
MAINTAINER Sudhanshu Shekhar <sudhanshu.shekhar.iitd@gmail.com>

RUN mkdir -p /workspace
WORKDIR /workspace

RUN set -eux \
    && apt-get update && apt-get install -y \
    && apt-get install --no-install-recommends build-essential libssl-dev -y \
    && rm -rf /var/lib/apt/lists/*

RUN conda update --yes pip
RUN conda install -y ipython ipython-notebook

COPY requirements.txt /tmp/requirements.txt
RUN set -eux \
    && pip install --no-cache-dir -r /tmp/requirements.txt \
    && rm -fv /tmp/zomato-requirements.txt \
    && conda clean --all --yes
