zsh-docker [![Build Status](https://travis-ci.org/zsh-users/zsh-docker.svg?branch=master)](https://travis-ci.org/zsh-users/zsh-docker)
==========

**[Zsh](http://www.zsh.org) [Docker](https://www.docker.com) containers.**


Usage
-----

The images are based on `debian:jessie`, and available on [Docker Hub](https://hub.docker.com/u/zshusers):

| Image                                                                   | Image info                                                                                                                     | To execute                           |
| ------------------------------------------------------------------------| ------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------ |
| [zsh master](https://hub.docker.com/r/zshusers/zsh-master) (daily build)| [![](https://images.microbadger.com/badges/image/zshusers/zsh-master.svg)](https://microbadger.com/images/zshusers/zsh-master) | `docker run -it zshusers/zsh-master` |
| [5.7.1](https://hub.docker.com/r/zshusers/zsh-5.7.1)                    | [![](https://images.microbadger.com/badges/image/zshusers/zsh-5.7.1.svg)](https://microbadger.com/images/zshusers/zsh-5.7.1)   | `docker run -it zshusers/zsh-5.7.1`  |
| [5.7](https://hub.docker.com/r/zshusers/zsh-5.7)                        | [![](https://images.microbadger.com/badges/image/zshusers/zsh-5.7.svg)](https://microbadger.com/images/zshusers/zsh-5.7)       | `docker run -it zshusers/zsh-5.7`    |
| [5.6.2](https://hub.docker.com/r/zshusers/zsh-5.6.2)                    | [![](https://images.microbadger.com/badges/image/zshusers/zsh-5.6.2.svg)](https://microbadger.com/images/zshusers/zsh-5.6.2)   | `docker run -it zshusers/zsh-5.6.2`  |
| [5.6.1](https://hub.docker.com/r/zshusers/zsh-5.6.1)                    | [![](https://images.microbadger.com/badges/image/zshusers/zsh-5.6.1.svg)](https://microbadger.com/images/zshusers/zsh-5.6.1)   | `docker run -it zshusers/zsh-5.6.1`  |
| [5.6](https://hub.docker.com/r/zshusers/zsh-5.6)                        | [![](https://images.microbadger.com/badges/image/zshusers/zsh-5.6.svg)](https://microbadger.com/images/zshusers/zsh-5.6)       | `docker run -it zshusers/zsh-5.6`    |
| [5.5.1](https://hub.docker.com/r/zshusers/zsh-5.5.1)                    | [![](https://images.microbadger.com/badges/image/zshusers/zsh-5.5.1.svg)](https://microbadger.com/images/zshusers/zsh-5.5.1)   | `docker run -it zshusers/zsh-5.5.1`  |
| [5.5](https://hub.docker.com/r/zshusers/zsh-5.5)                        | [![](https://images.microbadger.com/badges/image/zshusers/zsh-5.5.svg)](https://microbadger.com/images/zshusers/zsh-5.5)       | `docker run -it zshusers/zsh-5.5`    |
| [5.4.2](https://hub.docker.com/r/zshusers/zsh-5.4.2)                    | [![](https://images.microbadger.com/badges/image/zshusers/zsh-5.4.2.svg)](https://microbadger.com/images/zshusers/zsh-5.4.2)   | `docker run -it zshusers/zsh-5.4.2`  |
| [5.4.1](https://hub.docker.com/r/zshusers/zsh-5.4.1)                    | [![](https://images.microbadger.com/badges/image/zshusers/zsh-5.4.1.svg)](https://microbadger.com/images/zshusers/zsh-5.4.1)   | `docker run -it zshusers/zsh-5.4.1`  |
| [5.4](https://hub.docker.com/r/zshusers/zsh-5.4)                        | [![](https://images.microbadger.com/badges/image/zshusers/zsh-5.4.svg)](https://microbadger.com/images/zshusers/zsh-5.4)       | `docker run -it zshusers/zsh-5.4`    |
| [5.3.1](https://hub.docker.com/r/zshusers/zsh-5.3.1)                    | [![](https://images.microbadger.com/badges/image/zshusers/zsh-5.3.1.svg)](https://microbadger.com/images/zshusers/zsh-5.3.1)   | `docker run -it zshusers/zsh-5.3.1`  |
| [5.3](https://hub.docker.com/r/zshusers/zsh-5.3)                        | [![](https://images.microbadger.com/badges/image/zshusers/zsh-5.3.svg)](https://microbadger.com/images/zshusers/zsh-5.3)       | `docker run -it zshusers/zsh-5.3`    |
| [5.2](https://hub.docker.com/r/zshusers/zsh-5.2)                        | [![](https://images.microbadger.com/badges/image/zshusers/zsh-5.2.svg)](https://microbadger.com/images/zshusers/zsh-5.2)       | `docker run -it zshusers/zsh-5.2`    |
| [5.1.1](https://hub.docker.com/r/zshusers/zsh-5.1.1)                    | [![](https://images.microbadger.com/badges/image/zshusers/zsh-5.1.1.svg)](https://microbadger.com/images/zshusers/zsh-5.1.1)   | `docker run -it zshusers/zsh-5.1.1`  |
| [5.1](https://hub.docker.com/r/zshusers/zsh-5.1)                        | [![](https://images.microbadger.com/badges/image/zshusers/zsh-5.1.svg)](https://microbadger.com/images/zshusers/zsh-5.1)       | `docker run -it zshusers/zsh-5.1`    |
| [5.0.8](https://hub.docker.com/r/zshusers/zsh-5.0.8)                    | [![](https://images.microbadger.com/badges/image/zshusers/zsh-5.0.8.svg)](https://microbadger.com/images/zshusers/zsh-5.0.8)   | `docker run -it zshusers/zsh-5.0.8`  |
| [5.0.7](https://hub.docker.com/r/zshusers/zsh-5.0.7)                    | [![](https://images.microbadger.com/badges/image/zshusers/zsh-5.0.7.svg)](https://microbadger.com/images/zshusers/zsh-5.0.7)   | `docker run -it zshusers/zsh-5.0.7`  |
| [5.0.6](https://hub.docker.com/r/zshusers/zsh-5.0.6)                    | [![](https://images.microbadger.com/badges/image/zshusers/zsh-5.0.6.svg)](https://microbadger.com/images/zshusers/zsh-5.0.6)   | `docker run -it zshusers/zsh-5.0.6`  |
| [5.0.5](https://hub.docker.com/r/zshusers/zsh-5.0.5)                    | [![](https://images.microbadger.com/badges/image/zshusers/zsh-5.0.5.svg)](https://microbadger.com/images/zshusers/zsh-5.0.5)   | `docker run -it zshusers/zsh-5.0.5`  |
| [5.0.4](https://hub.docker.com/r/zshusers/zsh-5.0.4)                    | [![](https://images.microbadger.com/badges/image/zshusers/zsh-5.0.4.svg)](https://microbadger.com/images/zshusers/zsh-5.0.4)   | `docker run -it zshusers/zsh-5.0.4`  |
| [5.0.3](https://hub.docker.com/r/zshusers/zsh-5.0.3)                    | [![](https://images.microbadger.com/badges/image/zshusers/zsh-5.0.3.svg)](https://microbadger.com/images/zshusers/zsh-5.0.3)   | `docker run -it zshusers/zsh-5.0.3`  |
| [5.0.2](https://hub.docker.com/r/zshusers/zsh-5.0.2)                    | [![](https://images.microbadger.com/badges/image/zshusers/zsh-5.0.2.svg)](https://microbadger.com/images/zshusers/zsh-5.0.2)   | `docker run -it zshusers/zsh-5.0.2`  |
| [5.0.1](https://hub.docker.com/r/zshusers/zsh-5.0.1)                    | [![](https://images.microbadger.com/badges/image/zshusers/zsh-5.0.1.svg)](https://microbadger.com/images/zshusers/zsh-5.0.1)   | `docker run -it zshusers/zsh-5.0.1`  |
| [5.0.0](https://hub.docker.com/r/zshusers/zsh-5.0.0)                    | [![](https://images.microbadger.com/badges/image/zshusers/zsh-5.0.0.svg)](https://microbadger.com/images/zshusers/zsh-5.0.0)   | `docker run -it zshusers/zsh-5.0.0`  |
| [4.3.17](https://hub.docker.com/r/zshusers/zsh-4.3.17)                  | [![](https://images.microbadger.com/badges/image/zshusers/zsh-4.3.17.svg)](https://microbadger.com/images/zshusers/zsh-4.3.17) | `docker run -it zshusers/zsh-4.3.17` |
| [4.3.16](https://hub.docker.com/r/zshusers/zsh-4.3.16)                  | [![](https://images.microbadger.com/badges/image/zshusers/zsh-4.3.16.svg)](https://microbadger.com/images/zshusers/zsh-4.3.16) | `docker run -it zshusers/zsh-4.3.16` |
| [4.3.15](https://hub.docker.com/r/zshusers/zsh-4.3.15)                  | [![](https://images.microbadger.com/badges/image/zshusers/zsh-4.3.15.svg)](https://microbadger.com/images/zshusers/zsh-4.3.15) | `docker run -it zshusers/zsh-4.3.15` |
| [4.3.14](https://hub.docker.com/r/zshusers/zsh-4.3.14)                  | [![](https://images.microbadger.com/badges/image/zshusers/zsh-4.3.14.svg)](https://microbadger.com/images/zshusers/zsh-4.3.14) | `docker run -it zshusers/zsh-4.3.14` |
| [4.3.13](https://hub.docker.com/r/zshusers/zsh-4.3.13)                  | [![](https://images.microbadger.com/badges/image/zshusers/zsh-4.3.13.svg)](https://microbadger.com/images/zshusers/zsh-4.3.13) | `docker run -it zshusers/zsh-4.3.13` |
| [4.3.12](https://hub.docker.com/r/zshusers/zsh-4.3.12)                  | [![](https://images.microbadger.com/badges/image/zshusers/zsh-4.3.12.svg)](https://microbadger.com/images/zshusers/zsh-4.3.12) | `docker run -it zshusers/zsh-4.3.12` |
| [4.3.11](https://hub.docker.com/r/zshusers/zsh-4.3.11)                  | [![](https://images.microbadger.com/badges/image/zshusers/zsh-4.3.11.svg)](https://microbadger.com/images/zshusers/zsh-4.3.11) | `docker run -it zshusers/zsh-4.3.11` |


Development
-----------

To build images, the requirements are:

 * [GNU make](https://www.gnu.org/software/make)
 * [Docker](https://www.docker.com) (>=1.13), with experimental features enabled

To build an image of zsh's current `master` branch:

    make build VERSION=master

To build an image of a branch (see all branches [here](https://github.com/zsh-users/zsh/branches)):

    make build VERSION=schaefer/badarrays

To build an image of a tag (see all tags [here](https://github.com/zsh-users/zsh/tags)):

    make build VERSION=5.4.1

To build an image of a commit:

    make build VERSION=8abbaefaee7af75943b2b427205d0ec4a52a9b7b

To deploy an image to [Docker Hub](https://hub.docker.com):

    make deploy
