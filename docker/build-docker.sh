#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-recappay/recapd-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/recapd docker/bin/
cp $BUILD_DIR/src/recap-cli docker/bin/
cp $BUILD_DIR/src/recap-tx docker/bin/
strip docker/bin/recapd
strip docker/bin/recap-cli
strip docker/bin/recap-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
