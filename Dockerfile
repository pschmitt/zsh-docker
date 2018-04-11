FROM bitnami/minideb-extras:jessie-buildpack AS builder
ARG ref=master
WORKDIR /tmp/zsh-build
RUN install_packages autoconf \
                     libtool \
                     libcap-dev \
                     libtinfo5 \
                     libncursesw5-dev \
                     libpcre3-dev \
                     libgdbm-dev \
                     yodl \
                     groff \
                     man-db \
                     texinfo
RUN git clone https://github.com/zsh-users/zsh.git .
RUN git checkout $ref
RUN ./Util/preconfig
RUN ./configure --prefix /usr \
                --enable-pcre \
                --enable-cap \
                --enable-multibyte \
                --enable-zsh-mem \
                --with-term-lib='ncursesw tinfo' \
                --without-tcsetpgrp
RUN make
RUN make install DESTDIR=/tmp/zsh-install
RUN make install.info DESTDIR=/tmp/zsh-install || true
RUN yes '' | adduser --shell /bin/sh --home /tmp/zsh-build --disabled-login --disabled-password zshtest
RUN chown -R zshtest /tmp/zsh-build
RUN su - zshtest -c 'make test' || true

FROM bitnami/minideb:jessie
LABEL maintainer="https://github.com/zsh-users/zsh-docker"
WORKDIR /
COPY --from=builder /tmp/zsh-install /
RUN install_packages libcap2 \
                     libtinfo5 \
                     libncursesw5 \
                     libpcre3 \
                     libgdbm3
CMD ["/usr/bin/zsh","-l"]
