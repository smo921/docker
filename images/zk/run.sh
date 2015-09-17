#!/bin/bash
#
# Original source github:fabric8io/fabric8-zookeeper-docker
#

CONF="/zk/conf/zoo.cfg"
DATA="/zk/data"

echo "$SERVER_ID / $MAX_SERVERS"
if [ ! -z "$SERVER_ID" ] && [ ! -z "$MAX_SERVERS" ]; then
  echo "Starting up in clustered mode"
  echo "" >> $CONF
  echo "#Server List" >> $CONF
  for i in $( eval echo {1..$MAX_SERVERS});do
    if [ "$SERVER_ID" == "$i" ];then
      echo "server.$i=0.0.0.0:2888:3888" >> $CONF
    else
      echo "server.$i=zookeeper-$i:2888:3888" >> $CONF
    fi
  done
  cat $CONF

  # Persists the ID of the current instance of Zookeeper
  echo ${SERVER_ID} > $DATA/myid
else
	echo "Starting up in standalone mode"
fi

exec /zk/bin/zkServer.sh start-foreground
