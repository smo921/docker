FROM java:8-jdk-alpine

MAINTAINER soberther@gmail.com

ENV REFRESH_DATE 2016-04
ENV SCALA_VER 2.11
ENV KAFKA_VER 0.9.0.1

RUN apk add --update bash ca-certificates wget && \
 wget -q \
 http://www.webhostingjams.com/mirror/apache/kafka/$KAFKA_VER/kafka_$SCALA_VER-$KAFKA_VER.tgz && \
 tar xzf kafka_$SCALA_VER-$KAFKA_VER.tgz && \
 rm kafka_$SCALA_VER-$KAFKA_VER.tgz && \
 ln -s /kafka_$SCALA_VER-$KAFKA_VER /kafka

WORKDIR /kafka/bin
CMD ["/bin/bash"]
