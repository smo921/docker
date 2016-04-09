#!/bin/bash


sed -i'' -e "s/CONSUL_SERVER/${CONSUL_SERVER}/" /etc/vault/vault.hcl

vault server -config /etc/vault/vault.hcl
