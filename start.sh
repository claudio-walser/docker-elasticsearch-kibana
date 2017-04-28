#!/bin/sh

echo "server.basePath: \"${KIBANA_BASE_PATH}\"" >> kibana/config/kibana.yml;
sh elasticsearch/bin/elasticsearch --es.logger.level=OFF --network.host=0.0.0.0 & kibana/bin/kibana -Q;