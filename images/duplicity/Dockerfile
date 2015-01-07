FROM smo921/python
MAINTAINER Steve Oberther stephenoberther@gmail.com

RUN mkdir /src
WORKDIR /src

RUN wget https://code.launchpad.net/duplicity/0.6-series/0.6.25/+download/duplicity-0.6.25.tar.gz 
RUN tar xvzf duplicity-0.6.25.tar.gz
RUN pip install lockfile paramiko
RUN pip install ./duplicity-0.6.25

RUN mkdir /.ssh
RUN touch /.ssh/known_hosts
