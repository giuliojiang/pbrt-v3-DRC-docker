FROM ubuntu:20.04

RUN \
    apt-get update \
    && apt-get install -y wget \
    && wget -O /tmp/node.sh https://deb.nodesource.com/setup_12.x \
    && chmod +x /tmp/node.sh \
    && /tmp/node.sh \
    && rm /tmp/node.sh \
    && apt-get update \
    && apt-get install -y nodejs \
    && mkdir /app \
    && mkdir /bgreen \
    && mkdir /output\
    && mkdir /applocal \
    && wget -O /tmp/miniconda.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh \
    && chmod +x /tmp/miniconda.sh \
    && /tmp/miniconda.sh -b -p /miniconda \
    && /miniconda/bin/conda install pytorch scikit-image torchvision \
    && rm /tmp/miniconda.sh


ENV PATH="/miniconda/bin:${PATH}"

COPY bin /app
COPY bgreen /bgreen
COPY applocal /applocal

CMD node /applocal/server/index.js & /applocal/demo.sh && echo "Demo render completed. Output in /output" && /bin/bash