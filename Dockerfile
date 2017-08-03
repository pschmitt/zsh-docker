# If you update this line, update the first line of README.txt.
FROM alpine

# Arguments
ARG ref=master
ARG build_directory=/tmp/zsh
ARG build_dependencies='coreutils diffutils util-linux curl git automake autoconf gcc binutils libc-dev ncurses-dev pcre-dev yodl texinfo man man-pages mdocml-apropos groff'
ARG runtime_dependencies='pcre libcap gdbm'
ARG additional_dependencies='make'
ARG test_user=zsh

# Dependencies
RUN echo http://nl.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories
RUN apk add --update --no-cache $build_dependencies $runtime_dependencies $additional_dependencies

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
RUN yes '' | adduser -s /bin/sh -h $build_directory -D $test_user
RUN chown -R $test_user $build_directory
RUN su - $test_user -c 'make test'
RUN deluser --remove-home $test_user

# Cleaning
RUN rm -rf $build_directory
RUN apk del $build_dependencies

# Configuration
LABEL maintainer="https://github.com/zsh-users/zsh-docker"
WORKDIR /
CMD ["/usr/bin/zsh","-l"]
