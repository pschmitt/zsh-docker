zsh-docker [![Build Status](https://travis-ci.org/zsh-users/zsh-docker.svg?branch=master)](https://travis-ci.org/zsh-users/zsh-docker)
==========

**[Zsh](http://www.zsh.org) [Docker](https://www.docker.com) containers.**


Images
------

The images are based on `debian:jessie`, and available on [Docker Hub](https://hub.docker.com/u/zshusers):

- [4.3.11](https://hub.docker.com/r/zshusers/zsh-4.3.11)
- [4.3.12](https://hub.docker.com/r/zshusers/zsh-4.3.12)
- [4.3.13](https://hub.docker.com/r/zshusers/zsh-4.3.13)
- [4.3.14](https://hub.docker.com/r/zshusers/zsh-4.3.14)
- [4.3.15](https://hub.docker.com/r/zshusers/zsh-4.3.15)
- [4.3.16](https://hub.docker.com/r/zshusers/zsh-4.3.16)
- [4.3.17](https://hub.docker.com/r/zshusers/zsh-4.3.17)
- [5.0.0](https://hub.docker.com/r/zshusers/zsh-5.0.0)
- [5.0.1](https://hub.docker.com/r/zshusers/zsh-5.0.1)
- [5.0.2](https://hub.docker.com/r/zshusers/zsh-5.0.2)
- [5.0.3](https://hub.docker.com/r/zshusers/zsh-5.0.3)
- [5.0.4](https://hub.docker.com/r/zshusers/zsh-5.0.4)
- [5.0.5](https://hub.docker.com/r/zshusers/zsh-5.0.5)
- [5.0.6](https://hub.docker.com/r/zshusers/zsh-5.0.6)
- [5.0.7](https://hub.docker.com/r/zshusers/zsh-5.0.7)
- [5.0.8](https://hub.docker.com/r/zshusers/zsh-5.0.8)
- [5.1](https://hub.docker.com/r/zshusers/zsh-5.1)
- [5.1.1](https://hub.docker.com/r/zshusers/zsh-5.1.1)
- [5.2](https://hub.docker.com/r/zshusers/zsh-5.2)
- [5.3](https://hub.docker.com/r/zshusers/zsh-5.3)
- [5.3.1](https://hub.docker.com/r/zshusers/zsh-5.3.1)
- [zsh master](https://hub.docker.com/r/zshusers/zsh-master) (daily build)


Usage
-----

To build images, the requirements are:

 * [GNU make](https://www.gnu.org/software/make)
 * [Docker](https://www.docker.com) (>=1.13), with experimental features enabled

To build an image of zsh's current `master` branch:

    make build

To build an image of a branch (see all branches [here](https://github.com/zsh-users/zsh/branches)):

    make build VERSION=schaefer/badarrays

To build an image of a tag (see all tags [here](https://github.com/zsh-users/zsh/tags)):

    make build VERSION=zsh-5.3.1

To build an image of a commit:

    make build VERSION=8abbaefaee7af75943b2b427205d0ec4a52a9b7b

To deploy an image to [Docker Hub](https://hub.docker.com):

    make deploy
