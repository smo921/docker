#!/bin/bash

./make.rb $1
exit
docker build -t ruby .
docker run -i -t -v `pwd`:/tmp ruby cp /ruby-1.9.3-p484.deb /tmp/
ls -la ./ruby-1.9.3-p484.deb
