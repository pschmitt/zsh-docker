# If you update this line, update the first line of README.txt.
FROM debian:jessie

# Arguments
ARG ref=master
ARG build_directory=/tmp/zsh
ARG build_dependencies='git libpcre3-dev libgdbm-dev'
ARG runtime_dependencies='libpcre3 libgdbm3'
ARG additional_dependencies='make'
ARG test_user=zsh

# Dependencies
RUN sed 's/^deb/deb-src/' /etc/apt/sources.list | tee -a /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y -q $build_dependencies $runtime_dependencies $additional_dependencies
RUN apt-mark auto $build_dependencies
RUN apt-get build-dep -o APT::Get::Build-Dep-Automatic=true -y zsh

# Build and installation
WORKDIR $build_directory
RUN git clone https://github.com/zsh-users/zsh.git .
RUN git checkout $ref
RUN ./Util/preconfig
RUN ./configure --prefix /usr \
                --enable-pcre \
                --enable-cap \
                --without-tcsetpgrp
RUN make
RUN make install
RUN make install.info || true # Issue 4

# Tests
# run as a non privileged user, as zsh test suite is not designed to run as root
RUN yes '' | adduser --shell /bin/sh --home $build_directory --disabled-login --disabled-password $test_user
RUN chown -R $test_user $build_directory
RUN su - $test_user -c 'make test'
RUN deluser --remove-home $test_user

# Cleaning
RUN rm -rf $build_directory
RUN apt-get autoremove --purge -yq

# Configuration
LABEL maintainer="https://github.com/zsh-users/zsh-docker"
WORKDIR /
CMD ["/usr/bin/zsh","-l"]
