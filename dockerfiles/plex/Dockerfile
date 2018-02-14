FROM armv7/armhf-ubuntu:16.04
LABEL maintainer="fergal.moran@gmail.com"

ARG DEBIAN_FRONTEND="noninteractive"

ENV HOME="/config"
ENV PLEX_INSTALL="https://plex.tv/downloads/latest/1?channel=8&build=linux-ubuntu-x86_64&distro=ubuntu"


RUN apt-get update && \
    apt-get install -y \
    apt-transport-https \
    avahi-daemon \
    dbus \
    udev \
    wget

