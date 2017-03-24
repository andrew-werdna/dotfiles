#!/bin/bash

# many of the packages here
#     (e.g. python-software-properties, build-essential, curl, software-properties-common, apt-gransport-https, .etc)
#     are needed when using/installing other important packages
# others
#     (e.g. man, git, less, wget, tmux, .etc)
#     are commonly used to get things done and are often missing from a base Docker image

apt-get install -y \
    curl \
    man \
    git \
    less \
    python-software-properties \
    software-properties-common \
    wget \
    dos2unix \
    zip \
    unzip \
    apt-transport-https \
    lsb-release \
    ca-certificates \
    tmux \
    rsync \
    build-essential
