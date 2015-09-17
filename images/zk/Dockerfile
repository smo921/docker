FROM java:openjdk-8u66-jre

MAINTAINER soberther@gmail.com

ENV REFRESH_DATE 2015-09
ENV ZOOKEEPER_VERSION 3.4.6
EXPOSE 2181 2888 3888

RUN curl -s -o /zookeeper-3.4.6.tar.gz \
 http://mirror.metrocast.net/apache/zookeeper/stable/zookeeper-3.4.6.tar.gz
RUN tar xzf zookeeper-3.4.6.tar.gz
RUN ln -s /zookeeper-3.4.6 /zk
RUN mkdir -p /zk/data /zk/conf /zk/log

COPY zoo.cfg /zk/conf/zoo.cfg
COPY run.sh /run.sh

CMD ["/run.sh"]
