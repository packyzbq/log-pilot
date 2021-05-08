#!/usr/bin/env bash
#
# build docker image
#

build()
{
    echo -e "building image: log-pilot:latest\n"

    docker build -t log-pilot:latest -f Dockerfile.$1 .
}

case $1 in
fluentd)
    build fluentd
    docker save log-pilot:latest > ./log-pilot.tar
    ;;
*)
    build filebeat
    ;;
esac
