FROM debian:jessie
MAINTAINER Tom Meulensteen

RUN apt-get update && apt-get install -y locales \
    && apt-get install -qy --force-yes \
        nano && \
        git && \
    apt-get -y autoremove && \
    apt-get -y clean
ENV LANG en_US.utf8