#!/bin/bash

## Setup Root Keys
[ ! -d /root/.ssh ] && mkdir /root/.ssh
cp /vagrant_data/authorized_keys /root/.ssh/authorized_keys
chown root: /root/.ssh/authorized_keys
chmod 600 /root/.ssh/authorized_keys

## Install some software
apt-get update
apt-get install -y ansible git tmux python-pycurl python-pip
pip install docker-py
