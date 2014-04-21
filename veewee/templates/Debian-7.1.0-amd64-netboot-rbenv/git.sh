export GIT_VERSION="1.8.3.3"

apt-get install -y build-essential libcurl4-gnutls-dev libexpat1-dev gettext libz-dev libssl-dev 

cd /usr/src
wget https://git-core.googlecode.com/files/git-${GIT_VERSION}.tar.gz 

tar xvfz git-${GIT_VERSION}.tar.gz
cd git-${GIT_VERSION}
make prefix=/usr/local all
make prefix=/usr/local install