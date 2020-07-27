FROM debian:stretch
LABEL maintainer="Recap Developers <dev@recap.org>"
LABEL description="Dockerised RecapCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
