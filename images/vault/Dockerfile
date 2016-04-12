FROM golang:1.6-alpine

ENV CONSUL_SERVER="consul-1"
EXPOSE 8200
WORKDIR /
VOLUME /vault_logs

RUN apk --update add bash wget ca-certificates libcap
RUN wget -q -O /usr/local/bin/dumb-init \
    https://github.com/Yelp/dumb-init/releases/download/v1.0.0/dumb-init_1.0.0_amd64 && \
    chmod +x /usr/local/bin/dumb-init && \
    wget -q https://releases.hashicorp.com/vault/0.5.2/vault_0.5.2_linux_amd64.zip && \
    unzip vault_0.5.2_linux_amd64.zip -d /usr/local/bin/ && \
    setcap cap_ipc_lock=+ep /usr/local/bin/vault && \
    rm vault_0.5.2_linux_amd64.zip

RUN mkdir /etc/vault
COPY ./config/* /etc/vault/
COPY ./run.sh /run.sh
CMD ["/usr/local/bin/dumb-init", "/run.sh"]
