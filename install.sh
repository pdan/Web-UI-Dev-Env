#!/bin/bash

sudo apt-get update
sudo apt-get install -y git build-essential libssl-dev libcurl4-gnutls-dev libexpat1-dev gettext unzip

sudo mkdir -p /usr/local/{share/man,bin,lib/node,include/node,lib/node_modules}
sudo chown -R $USER /usr/local/{share/man,bin,lib/node,include/node,lib/node_modules}

cd ~/Downloads

mkdir node-install
curl http://nodejs.org/dist/node-latest.tar.gz | tar xz --strip-components=1
cd node-install/
./configure
make && make install

source ~/.bashrc

cd ~/Downloads
wget https://www.npmjs.org/install.sh
chmod +x install.sh
. ./install.sh

npm i -g grunt-cli gulp bower yo

wget -c https://github.com/atom/atom/releases/download/v0.196.0/atom-amd64.deb
sudo dpkg --install atom-amd64.deb
