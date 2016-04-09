#!/bin/bash


if [ $LDAP_INIT = "true" ]; then
  echo "Initializing LDAP config"
  sed -i'' -e "s/OLCSUFFIX/$LDAP_ROOTDN/" /etc/openldap/slapd.ldif
  /usr/sbin/slapadd -n 0 -F /etc/openldap/slapd.d -l /etc/openldap/slapd.ldif
fi

/usr/sbin/slapd -F /etc/openldap/slapd.d

syslogd -n -D -O /dev/stdout
