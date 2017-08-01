ARG url
ARG build_directory=/tmp/zsh-sources

FROM debian:jessie

RUN apt-get update
RUN apt-get install -y -q git unzip curl gcc make autoconf ncurses-dev python-pip
RUN pip install cram

WORKDIR $build_directory

RUN curl -L $url | tar xvz

RUN rm -rf ./Doc
RUN mkdir ./Doc && echo "all:\n\n" > ./Doc/Makefile.in

RUN ./Util/preconfig
RUN ./configure --without-tcsetpgrp
RUN make
RUN make install.bin install.modules install.fns || :

RUN rm -rf $build_directory

WORKDIR /
