# If you update this line, update the first line of README.txt.
FROM debian:jessie

# Arguments
ARG url
ARG build_directory=/tmp/zshbuild
ARG build_user=zshbuild

# Dependencies
RUN apt-get update
RUN apt-get install -y git curl
RUN apt-get build-dep -y zsh

# Build and tests
# run as a non privileged user, as zsh test suite is not designed to run as root
RUN adduser --shell /bin/sh --disabled-login --disabled-password $build_user
RUN su - $build_user -c "mkdir -pv $build_directory && \
                         cd $build_directory && \
                         curl -LSf $url | tar xvz --strip-components=1 && \
                         ./Util/preconfig && \
                         ./configure --enable-pcre --enable-cap --without-tcsetpgrp && \
                         make && \
                         make test"

# Installation
WORKDIR $build_directory
RUN make install
RUN make install.info || true # Issue 4

# Cleaning
RUN rm -rf $build_directory
RUN deluser --remove-home $build_user
WORKDIR /
