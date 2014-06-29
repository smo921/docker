#!/bin/bash

## Install some software
echo "Updating apt"
apt-get update 2>&1 > /dev/null
apt-get install -y python-pycurl
