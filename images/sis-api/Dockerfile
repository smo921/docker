FROM iojs:latest
MAINTAINER Steve Oberther stephenoberther@gmail.com

RUN npm install -g grunt-cli
RUN git clone https://github.com/sis-cmdb/sis-api.git
WORKDIR /sis-api
RUN npm install
ADD config.json conf/config.json
