FROM debian:jessie

ARG url
ARG build_directory=/tmp/zsh-sources

RUN apt-get update
RUN apt-get install -y -q git curl gcc make autoconf ncurses-dev libpcre3-dev yodl texinfo man-db roffit

WORKDIR $build_directory

RUN curl -LSf $url | tar xvz --strip-components=1

RUN ./Util/preconfig
RUN ./configure --enable-pcre --enable-cap --without-tcsetpgrp
RUN make
RUN make test
RUN make install
RUN make install.info || true # Issue 4

RUN rm -rf $build_directory

RUN zsh --version

WORKDIR /
