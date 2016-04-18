#!/bin/bash

ETH0_ADDR=$(ip -f inet -o addr| grep eth0 | awk '{print $4}' | awk -F'/' '{ print $1 }')
export VAULT_ADVERTISE_ADDR="http://${ETH0_ADDR}:8200/"

sed -i'' -e "s/CONSUL_SERVER/${CONSUL_SERVER}/" /etc/vault/vault.hcl

vault server -config /etc/vault/vault.hcl
