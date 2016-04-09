FROM golang:1.6-alpine

ENV CONSUL_CLUSTER_SIZE=1
ENV SERVER_ID=1
EXPOSE 8300 8301 8302 8400 8500 8600 8600/udp
WORKDIR /

RUN apk update && apk add bash wget
RUN wget -q --no-check-certificate -O /usr/local/bin/dumb-init \
    https://github.com/Yelp/dumb-init/releases/download/v1.0.0/dumb-init_1.0.0_amd64 && \
    chmod +x /usr/local/bin/dumb-init && \
    wget -q --no-check-certificate https://releases.hashicorp.com/consul/0.6.4/consul_0.6.4_linux_amd64.zip && \
    unzip consul_0.6.4_linux_amd64.zip -d /usr/local/bin/ && \
    rm consul_0.6.4_linux_amd64.zip

COPY ./run.sh /run.sh
CMD ["/usr/local/bin/dumb-init", "/run.sh"]
