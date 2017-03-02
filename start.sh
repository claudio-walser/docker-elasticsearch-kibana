#!/bin/sh

echo "server.basePath: ${KIBANA_BASE_PATH}" >> kibana/config/kibana.yml;
sh elasticsearch/bin/elasticsearch -E http.host=0.0.0.0 --quiet & kibana/bin/kibana --host 0.0.0.0 -Q;