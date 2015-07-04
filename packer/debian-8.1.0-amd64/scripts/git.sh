#!/bin/bash -eux

export GIT_VERSION="2.4.5"

apt-get install -y build-essential libcurl4-gnutls-dev libexpat1-dev gettext libz-dev libssl-dev

cd /usr/src
wget https://github.com/git/git/archive/v${GIT_VERSION}.tar.gz -O git-${GIT_VERSION}.tar.gz

tar xvfz git-${GIT_VERSION}.tar.gz
cd git-${GIT_VERSION}
make prefix=/usr/local all
make prefix=/usr/local install
