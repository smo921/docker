#!/bin/bash

## Setup Root Keys
###[ ! -d /root/.ssh ] && mkdir /root/.ssh
###cp /vagrant/files/authorized_keys /root/.ssh/authorized_keys
###chown root: /root/.ssh/authorized_keys
###chmod 600 /root/.ssh/authorized_keys

## Install some software
echo "Updating apt"
apt-get update 2>&1 > /dev/null
apt-get install -y python-pycurl
###apt-get install -y ansible git tmux python-pycurl python-pip
#pip install docker-py
