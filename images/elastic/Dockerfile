FROM java:8-jdk-alpine
MAINTAINER Steve Oberther <stephenoberther@gmail.com>

ENV REFRESHED_AT 2016-04
ENV ELASTIC_VER 2.3.1
EXPOSE 9200 9300
VOLUME /elastic-data /elastic-logs /elastic-plugins /elastic-scripts

RUN apk add --update bash ca-certificates curl && \
    wget -q -O /usr/local/bin/dumb-init \
    https://github.com/Yelp/dumb-init/releases/download/v1.0.0/dumb-init_1.0.0_amd64 && \
    chmod +x /usr/local/bin/dumb-init && \
    curl -s \
    https://download.elastic.co/elasticsearch/release/org/elasticsearch/distribution/tar/elasticsearch/$ELASTIC_VER/elasticsearch-$ELASTIC_VER.tar.gz | \
    tar -xzf -

RUN sed -i'' -e '/^daemon:/ s%/sbin/nologin%/bin/bash%' /etc/passwd

COPY ./run.sh /run.sh
CMD ["/usr/local/bin/dumb-init", "/run.sh"]
