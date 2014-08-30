#!/bin/bash -eux

mkdir -p /home/vagrant/.ssh
curl -k 'https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub' -o /home/vagrant/.ssh/authorized_keys
chown -R vagrant /home/vagrant/.ssh
chmod -R go-rwsx /home/vagrant/.ssh
