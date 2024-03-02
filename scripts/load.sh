#!/bin/bash

/opt/graphdb/dist/bin/importrdf load -c /repo_config.ttl -m parallel /init/*.ttl

mv /opt/graphdb/dist/data /opt/graphdb/home