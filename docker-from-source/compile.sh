#! /bin/bash
set -e

apt-get update
apt-get install -y wget unzip
wget -O /tmp/node.sh https://deb.nodesource.com/setup_12.x
chmod +x /tmp/node.sh
/tmp/node.sh
rm /tmp/node.sh
apt-get update
apt-get install -y nodejs git python3
apt-get install -y cmake g++ doxygen zlib1g-dev
mkdir /app
mkdir /bgreen
mkdir /output
wget -O /tmp/miniconda.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
chmod +x /tmp/miniconda.sh
/tmp/miniconda.sh -b -p /miniconda
/miniconda/bin/conda install pytorch torchvision cudatoolkit=10.2 -c pytorch
/miniconda/bin/conda install scikit-image
rm /tmp/miniconda.sh

mkdir /tmp/git
cd /tmp/git
wget https://github.com/giuliojiang/pbrt-v3-DRC-docker/archive/master.zip -O pbrt-v3-DRC-docker.zip
unzip pbrt-v3-DRC-docker.zip
mv /tmp/git/pbrt-v3-DRC-docker-master/docker/applocal /applocal
cd /applocal/server
npm ci

cd /tmp/git
git clone --recursive https://github.com/giuliojiang/pbrt-v3-IILE/
cd pbrt-v3-IILE
python3 compile.py
wget -O iispt_model.tch "https://github.com/giuliojiang/pbrt-v3-IISPT-dataset/releases/download/v4/iispt_model_f1.tch"
mv /tmp/git/pbrt-v3-IILE /app

cd /tmp
wget https://github.com/giuliojiang/pbrt-v3-DRC-docker/releases/download/v1/supplementary.tgz -O supplementary.tgz
tar -vxf supplementary.tgz