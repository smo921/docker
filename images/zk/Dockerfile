FROM java:8-jdk-alpine

MAINTAINER soberther@gmail.com

ENV REFRESH_DATE 2016-04
ENV ZOOKEEPER_VERSION 3.4.8
EXPOSE 2181 2888 3888

RUN apk update && apk add bash
RUN wget -q -O /usr/local/bin/dumb-init \
  https://github.com/Yelp/dumb-init/releases/download/v1.0.0/dumb-init_1.0.0_amd64 && \
 chmod +x /usr/local/bin/dumb-init

RUN wget -q \
 http://mirror.metrocast.net/apache/zookeeper/stable/zookeeper-3.4.8.tar.gz && \
 tar xzf zookeeper-3.4.8.tar.gz && \
 rm zookeeper-3.4.8.tar.gz && \
 ln -s /zookeeper-3.4.8 /zk && \
 mkdir -p /zk/data /zk/conf /zk/log

COPY zoo.cfg /zk/conf/zoo.cfg
COPY run.sh /run.sh

VOLUME ["/zk/data", "/zk/log"]
CMD ["/usr/local/bin/dumb-init", "/run.sh"]
