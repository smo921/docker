#!/bin/bash

chown daemon:daemon /elastic-data /elastic-logs /elastic-plugins /elastic-scripts

/bin/su -c \
  "/elasticsearch-$ELASTIC_VER/bin/elasticsearch \
    --path.data=/elastic-data --path.logs=/elastic-logs \
    --path.plugins=/elastic-plugins --path.scripts=/elastic-scripts \
    --network.host=0.0.0.0" \
  daemon
