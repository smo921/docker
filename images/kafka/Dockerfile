FROM java:8-jdk-alpine

MAINTAINER soberther@gmail.com

ENV REFRESH_DATE 2016-04
ENV KAFKA_VER 0.9.0.1
ENV KAFKA_PATH /kafka

RUN apk update && apk add bash

RUN wget -q \
 http://www.webhostingjams.com/mirror/apache/kafka/0.9.0.1/kafka_2.11-0.9.0.1.tgz

RUN tar xzf kafka_2.11-0.9.0.1.tgz && \
ln -s /kafka_2.11-0.9.0.1 /kafka && \
mkdir -p /kafka/logs

WORKDIR /kafka
COPY kafka.config config/kafka.config
COPY run.sh run.sh

CMD ["./run.sh"]
