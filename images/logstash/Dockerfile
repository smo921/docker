FROM java:8-jdk-alpine
MAINTAINER Steve Oberther <stephenoberther@gmail.com>

ENV REFRESHED_AT 2016-04
ENV LOGSTASH_VER 2.3.1
ENV ELASTIC_HOST elastic
ENV ELASTIC_PORT 9200
VOLUME /logstash-templates
EXPOSE 514

RUN apk add --update bash ca-certificates curl && \
    wget -q -O /usr/local/bin/dumb-init \
    https://github.com/Yelp/dumb-init/releases/download/v1.0.0/dumb-init_1.0.0_amd64 && \
    chmod +x /usr/local/bin/dumb-init && \
    curl -s https://download.elastic.co/logstash/logstash/logstash-$LOGSTASH_VER.tar.gz | \
    tar -xzf - && \
    mkdir -p /logstash-conf

ADD ./run.sh /run.sh

CMD [ "/usr/local/bin/dumb-init", "/run.sh" ]
