FROM java:8-jre-alpine

MAINTAINER soberther@gmail.com

ENV REFRESH_DATE 2016-04
ENV ZOOKEEPER_VERSION 3.4.8

RUN apk update && apk add bash

RUN wget -q \
 http://mirror.metrocast.net/apache/zookeeper/stable/zookeeper-3.4.8.tar.gz && \
 tar xzf zookeeper-3.4.8.tar.gz && \
 rm zookeeper-3.4.8.tar.gz

WORKDIR /zookeeper-3.4.8/bin

ENTRYPOINT ["./zkCli.sh", "-server"]
