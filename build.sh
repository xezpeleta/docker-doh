#!/usr/bin/env bash

DOCKER_IMAGE_NAME=xezpeleta/doh

HOMEDIR=$PWD
# Download doh
if [ ! -d src/doh ]
then
    cd src/ && git clone git@github.com:curl/doh.git
else
    cd src/doh && git pull
fi

# Build docker image
cd $HOMEDIR
docker build -t xezpeleta/doh .

#
#docker push xezpeleta/doh
