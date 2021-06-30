FROM bitnami/minideb:buster AS builder
ARG ref=master
WORKDIR /tmp/zsh-build
RUN install_packages curl \
                     ca-certificates \
                     autoconf \
                     make \
                     libtool \
                     libcap-dev \
                     libtinfo5 \
                     libncursesw5-dev \
                     libpcre3-dev \
                     libgdbm-dev \
                     yodl \
                     groff \
                     man-db \
                     texinfo \
                     patch
RUN curl -L https://api.github.com/repos/zsh-users/zsh/tarball/$ref | tar xz --strip=1

COPY *.patch ./
RUN for p in *.patch; do patch -s -p1 -r /dev/null -i $p || true; done

RUN rm -f Test/X02zlevi.ztst

RUN ./Util/preconfig
RUN ./configure --prefix /usr \
                --enable-pcre \
                --enable-cap \
                --enable-multibyte \
                --with-term-lib='ncursesw tinfo' \
                --with-tcsetpgrp
RUN make
RUN make -C Etc all FAQ FAQ.html
RUN if test $ref = "master" ; then install_packages cm-super-minimal texlive-fonts-recommended texlive-latex-base texlive-latex-recommended ghostscript bsdmainutils ; fi
RUN if test $ref = "master" ; then make -C Doc everything ; fi
RUN make install DESTDIR=/tmp/zsh-install
RUN make install.info DESTDIR=/tmp/zsh-install || true
RUN yes '' | adduser --shell /bin/sh --home /tmp/zsh-build --disabled-login --disabled-password zshtest
RUN chown -R zshtest /tmp/zsh-build
RUN su - zshtest -c 'timeout 120 make test' || true

FROM bitnami/minideb:buster
LABEL maintainer="https://github.com/zsh-users/zsh-docker"
WORKDIR /
COPY --from=builder /tmp/zsh-install /
RUN install_packages libcap2 \
                     libtinfo5 \
                     libncursesw5 \
                     libpcre3 \
                     libgdbm6
CMD ["/usr/bin/zsh","-l"]
