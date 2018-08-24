# Dockerfile to build Tinyproxy

FROM alpine:3.8
MAINTAINER Anthony Rogliano <aroglian@cisco.com>
LABEL Description="Tinyproxy docker image"

RUN apk add --no-cache \
    bash \
    tinyproxy

ENTRYPOINT ["/usr/sbin/tinyproxy", "-d"]
