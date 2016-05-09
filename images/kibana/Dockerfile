FROM iojs:latest
MAINTAINER Steve Oberther <stephenoberther@gmail.com>

ENV REFRESHED_AT 2016-04
ENV KIBANA_VER 4.5.0
ENV ELASTIC_URL http://elastic:9200/
ENV KIBANA_PORT 5601


RUN wget -q -O /usr/local/bin/dumb-init \
    https://github.com/Yelp/dumb-init/releases/download/v1.0.0/dumb-init_1.0.0_amd64 && \
    chmod +x /usr/local/bin/dumb-init && \
    curl -s \
    https://download.elastic.co/kibana/kibana/kibana-$KIBANA_VER-linux-x64.tar.gz | \
    tar xzf - && \
    ln -s /kibana-$KIBANA_VER-linux-x64 /kibana

COPY ./run.sh /run.sh
CMD ["/usr/local/bin/dumb-init", "/run.sh"]
