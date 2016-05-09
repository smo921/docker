#!/bin/bash

## set the host and port for elasticsearch. MUST BE VISIBLE TO THE BROWSER!!
find /logstash-templates -type f | while read src; do
    dest="/logstash-conf/$( basename ${src} )"

    sed \
        -e "s#@@ES_HOST@@#${ELASTIC_HOST}#g" \
        -e "s#@@ES_PORT@@#${ELASTIC_PORT}#g" \
        < "${src}" \
        > "${dest}"
done

exec /logstash-$LOGSTASH_VER/bin/logstash --config=/logstash-conf
