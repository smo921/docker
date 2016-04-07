FROM java:8-jdk-alpine

MAINTAINER soberther@gmail.com

ENV REFRESH_DATE 2016-04
ENV KAFKA_VER 0.9.0.1
ENV KAFKA_PATH /kafka
EXPOSE 9092

RUN apk update && apk add bash
RUN wget -q -O /usr/local/bin/dumb-init \
  https://github.com/Yelp/dumb-init/releases/download/v1.0.0/dumb-init_1.0.0_amd64 && \
 chmod +x /usr/local/bin/dumb-init

RUN wget -q \
 http://www.webhostingjams.com/mirror/apache/kafka/0.9.0.1/kafka_2.11-0.9.0.1.tgz && \
 tar xzf kafka_2.11-0.9.0.1.tgz && \
 rm kafka_2.11-0.9.0.1.tgz && \
 ln -s /kafka_2.11-0.9.0.1 /kafka && \
 mkdir -p /kafka/logs

WORKDIR /kafka
COPY kafka.config config/kafka.config
COPY run.sh run.sh

CMD ["/usr/local/bin/dumb-init", "./run.sh"]
