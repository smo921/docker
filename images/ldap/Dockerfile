FROM alpine:latest

EXPOSE 389
ENV LDAP_INIT="false"
ENV LDAP_ROOTDN="dc=example,dc=com"

RUN apk update && \
    apk add openldap openldap-clients openldap-back-bdb bash wget && \
    mkdir -p /etc/openldap/slapd.d

RUN wget -q --no-check-certificate -O /usr/local/bin/dumb-init \
  https://github.com/Yelp/dumb-init/releases/download/v1.0.0/dumb-init_1.0.0_amd64 && \
  chmod +x /usr/local/bin/dumb-init


VOLUME /etc/openldap/slapd.d
VOLUME /var/lib/openldap/openldap-data

COPY ./slapd.ldif /etc/openldap/slapd.ldif
COPY ./run.sh /run.sh

CMD ["/usr/local/bin/dumb-init", "/run.sh"]
