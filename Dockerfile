FROM debian:jessie
MAINTAINER Tom Meulensteen

RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* \
    && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8 \
    && apt-get install -qy --force-yes \
        nano \
        unrar unzip && \
    apt-get -y autoremove && \
    apt-get -y clean
ENV LANG en_US.utf8