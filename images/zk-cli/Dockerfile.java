FROM java:openjdk-8u66-jre

MAINTAINER soberther@gmail.com

ENV REFRESH_DATE 2015-09
ENV ZOOKEEPER_VERSION 3.4.6

RUN wget -q \
 http://mirror.metrocast.net/apache/zookeeper/stable/zookeeper-3.4.6.tar.gz
RUN tar xzf zookeeper-3.4.6.tar.gz

WORKDIR /zookeeper-3.4.6/bin

ENTRYPOINT ["./zkCli.sh", "-server"]
