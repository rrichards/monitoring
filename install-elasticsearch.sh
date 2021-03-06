#!/bin/bash
##
# Installs Elasticsearch 1.0.x
#
# Provides:
# - HTTP REST API (TCP/9200)
##
curl -s http://packages.elasticsearch.org/GPG-KEY-elasticsearch | apt-key add -
echo "deb http://packages.elasticsearch.org/elasticsearch/1.0/debian stable main" > /etc/apt/sources.list.d/elasticsearch.list

apt-get update
apt-get install -y elasticsearch openjdk-7-jre-headless
update-rc.d elasticsearch defaults

service elasticsearch start
