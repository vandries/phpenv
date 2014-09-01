#
# PHPenv Dockerfile
#

FROM debian:wheezy
MAINTAINER Valentin Andries <valentin.andries@gmail.com>

# Install utils
RUN \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get -y install wget curl build-essential autoconf2.13 git libreadline-dev

# Install PHP deps
RUN \
  echo "\ndeb-src http://http.debian.net/debian wheezy main" >> /etc/apt/sources.list && \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get -y build-dep php5

# Install PHPenv
RUN \
  mkdir -p /home && \
  git clone git://github.com/phpenv/phpenv.git /home/.phpenv && \
  cd /home/.phpenv && \
  git reset --hard origin/master && \
  exec $SHELL && \
  ./bin/phpenv rehash

# Complete ENV
ENV PATH /home/.phpenv/bin:/home/.phpenv/shims:$PATH
ENV PHPENV_ROOT /home/.phpenv

# Install PHP 5.3
RUN \
  phpenv install php-5.3.29 && \
  phpenv global 5.3.29 && \
  phpenv rehash

# Define working directory
WORKDIR /data
