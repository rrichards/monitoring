#!/bin/bash
##
# Generates certificates for RabbitMQ brokers and clients
##
BASE_PATH=`pwd`
BUILD_PATH=$BASE_PATH/build

mkdir $BUILD_PATH
cd $BUILD_PATH

curl -O http://sensuapp.org/docs/0.12/tools/ssl_certs.tar
tar xf ssl_certs.tar

cd ssl_certs

source ssl_certs.sh generate
