#!/bin/bash

CONF="config/kafka.config"
: ${SERVER_ID:=0}

echo "Server ID: $SERVER_ID"
echo "broker.id=$SERVER_ID" >> $CONF
if [ ! -z "$ZK_SERVERS" ]; then
  ZK_CONNECT="zookeeper.connect=zookeeper-1:2181"
  for i in $( eval echo {2..$ZK_SERVERS}); do\
    ZK_CONNECT="$ZK_CONNECT,zookeeper-$i:2181"
  done
  echo "${ZK_CONNECT}${KAFKA_PATH}" >> $CONF
else
  echo "zookeeper.connect=zookeeper:2181" >> $CONF
	echo "Starting up in standalone mode"
fi

exec bin/kafka-server-start.sh $CONF
