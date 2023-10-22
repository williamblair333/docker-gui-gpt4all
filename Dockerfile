FROM ubuntu:latest

RUN apt-get update && apt-get install --yes \
    x11vnc \
    xterm \
    xserver-xorg-input-all \
    libxcb-icccm4 \
    libxcb-image0 \
    libxcb-keysyms1 \
    libxcb-render-util0 \
    libxcb-xinerama0 \
    libxcb-xkb1 \
    libxkbcommon-x11-0 \
    libopengl0 \
    locales \
    pciutils \
    openssl ca-certificates && \
    echo "C.UTF-8 UTF-8" > /etc/locale.gen && \
    locale-gen C.UTF-8 && \
    dpkg-reconfigure locales && \
    mkdir --parents /app && \
    mkdir --parents /root/Desktop  && \
    mkdir --parents /root/docs && \
    mkdir --parents /root/models

COPY ./gpt4all-installer-linux.run /app
  
WORKDIR /app
