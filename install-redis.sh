#!/bin/bash
##
# Installs Redis
#
# Provides:
# - Redis (TCP/6379)
##
BASE_PATH=`pwd`

echo "vm.overcommit_memory=1" > /etc/sysctl.conf
sysctl -f

add-apt-repository -y ppa:chris-lea/redis-server

apt-get update
apt-get install -y redis-server

cp $BASE_PATH/etc/redis/redis.conf /etc/redis
service redis-server restart
