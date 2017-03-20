FROM jupyter/datascience-notebook
MAINTAINER hidemasuoka112@gmail.com

USER root
# Install all OS dependencies for fully functional notebook server
RUN apt-get update && apt-get install -yq --no-install-recommends \
    python-dev \
    && apt-get clean && \
    rm -rf /var/lib/apt/lists/*



COPY requirements.txt ./

RUN pip install -r requirements.txt
COPY chainer-ja.ipynb /home/jovyan/work



