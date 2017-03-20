FROM jupyter/datascience-notebook
MAINTAINER hidemasuoka112@gmail.com

USER root
# Install all OS dependencies for fully functional notebook server
RUN apt-get update && apt-get install -yq --no-install-recommends \
    python-dev \
    && apt-get clean && \
    rm -rf /var/lib/apt/lists/*

USER $NB_USER

COPY requirements.txt ./
COPY chainer-ja.ipynb ./

RUN pip install -r requirements.txt
RUN pip uninstall jupyter
RUN pip install jupyter==4.2



