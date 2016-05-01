FROM golang:1.6-alpine

EXPOSE 8083 8086

RUN apk --update add bash wget ca-certificates libcap
RUN wget -q -O /usr/local/bin/dumb-init \
    https://github.com/Yelp/dumb-init/releases/download/v1.0.0/dumb-init_1.0.0_amd64 && \
    chmod +x /usr/local/bin/dumb-init && \
    wget -q -O - https://dl.influxdata.com/influxdb/releases/influxdb-0.12.2-1_linux_amd64.tar.gz | \
    tar xzf -


