FROM java:openjdk-8u66-jre

MAINTAINER soberther@gmail.com

ENV REFRESH_DATE 2015-09
ENV KAFKA_VER 0.8.2.0

RUN wget -q \
 http://www.webhostingjams.com/mirror/apache/kafka/0.8.2.0/kafka_2.10-0.8.2.0.tgz

RUN tar xzf kafka_2.10-0.8.2.0.tgz && \
ln -s /kafka_2.10-0.8.2.0 /kafka && \
mkdir -p /kafka/logs

WORKDIR /kafka
COPY kafka.config config/kafka.config
COPY run.sh run.sh

CMD ["./run.sh"]
