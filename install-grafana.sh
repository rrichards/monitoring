#!/bin/bash
##
# Installs Grafana, an alternate Graphite dashboard
#
# Uses Apache to provide Grafana at `http://localhost/grafana`
#
# Provides:
# - HTTP (TCP/80)
#
# Dependencies:
# - Elasticsearch (any version)
# - Graphite web
##
BASE_PATH=`pwd`

cd /tmp

curl -O -L http://grafanarel.s3.amazonaws.com/grafana-1.7.0.tar.gz
tar xf grafana-1.7.0.tar.gz
cp -R grafana-1.7.0 /usr/share/grafana

cp $BASE_PATH/usr/share/grafana/config.js /usr/share/grafana

apt-get install -y apache2

cp $BASE_PATH/etc/apache2/sites-enabled/grafana.conf /etc/apache2/sites-enabled
service apache2 restart
