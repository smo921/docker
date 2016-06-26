FROM debian:latest

EXPOSE 8083 8086

WORKDIR /

RUN apt-get -y update && \
    apt-get -y install wget && \
    wget -q -O /usr/local/bin/dumb-init \
    https://github.com/Yelp/dumb-init/releases/download/v1.0.0/dumb-init_1.0.0_amd64 && \
    chmod +x /usr/local/bin/dumb-init && \
    wget -q -O - https://dl.influxdata.com/influxdb/releases/influxdb-0.12.2-1_linux_amd64.tar.gz | \
    tar xzf -

ENTRYPOINT ["/usr/bin/influxd"]

