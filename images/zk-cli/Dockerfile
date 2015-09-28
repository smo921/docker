FROM smo921/c-dev

MAINTAINER soberther@gmail.com

ENV REFRESH_DATE 2015-09
ENV ZOOKEEPER_VERSION 3.4.6

RUN wget -q \
 http://mirror.metrocast.net/apache/zookeeper/stable/zookeeper-3.4.6.tar.gz
RUN tar xzf zookeeper-3.4.6.tar.gz

WORKDIR /zookeeper-3.4.6/src/c
RUN ./configure && make cli_st && make cli_mt && make install && ldconfig -v
WORKDIR /

ENTRYPOINT ["/usr/local/bin/cli_st"]
