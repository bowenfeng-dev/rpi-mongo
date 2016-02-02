FROM resin/rpi-raspbian:jessie
MAINTAINER Bowen Feng <bowenfeng.dev@gmail.com>

RUN apt-get update && apt-get upgrade \
    && apt-get install mongodb

VOLUME ["/data"]
EXPOSE 27017

ENTRYPOINT ["mongod"]

