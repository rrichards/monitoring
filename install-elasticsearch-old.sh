#!/bin/bash
##
# Installs Elasticsearch 0.90.x
#
# Oculus and Graylog2 require this version of Elasticsearch
#
# Provides:
# - HTTP REST API (TCP/9200)
##
curl -s http://packages.elasticsearch.org/GPG-KEY-elasticsearch | apt-key add -
echo "deb http://packages.elasticsearch.org/elasticsearch/0.90/debian stable main" > /etc/apt/sources.list.d/elasticsearch.list

apt-get update
apt-get install -y elasticsearch openjdk-7-jre-headless
