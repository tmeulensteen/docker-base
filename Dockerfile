FROM debian:jessie
MAINTAINER Tom Meulensteen

# Allow replacing httpredir mirror
ARG APT_MIRROR=httpredir.debian.org
RUN sed -i s/httpredir.debian.org/$APT_MIRROR/g /etc/apt/sources.list

RUN apt-get update && apt-get install -y \
        apt-utils \
        curl \
        nano \
        git && \
    apt-get -y autoremove && \
    apt-get -y clean
ENV LANG en_US.utf8