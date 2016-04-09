#!/bin/bash

SERVER_ID=${SERVER_ID:-1}

if [ ! -d /etc/consul.d ]; then
  mkdir /etc/consul.d
fi

CONSUL_ARGS="--ui -data-dir=/consul_data -server \
  -bootstrap-expect $CONSUL_CLUSTER_SIZE -config-dir /etc/consul.d \
  -client 0.0.0.0 -node consul-${SERVER_ID}"

if [ $CONSUL_CLUSTER_SIZE -gt 1 ]; then
  for i in $( eval echo {1..$CONSUL_CLUSTER_SIZE});do
    if [ "$SERVER_ID" != "$i" ];then
      CONSUL_ARGS="$CONSUL_ARGS -retry-join consul-${i}"
    fi
  done
fi

echo "Starting node consul-${SERVER_ID}"
consul agent $CONSUL_ARGS

