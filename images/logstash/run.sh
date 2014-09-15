#!/bin/bash

## make sure we've got the required config
if [ -z "${ES_PORT_9200_TCP_ADDR}" ] || [ -z "${ES_PORT_9200_TCP_PORT}" ]; then
    echo "missing ES config; did you link this container to that one?"
    exit 1
fi

## set the host and port for elasticsearch. MUST BE VISIBLE TO THE BROWSER!!
find /opt/logstash/templates -type f | while read src; do
    dest="/opt/logstash/conf/$( basename ${src} )"
    
    sed \
        -e "s#@@ES_HOST@@#${ES_PORT_9200_TCP_ADDR}#g" \
        -e "s#@@ES_PORT@@#${ES_PORT_9200_TCP_PORT}#g" \
        < "${src}" \
        > "${dest}"
done

exec bin/logstash --config=/opt/logstash/conf

