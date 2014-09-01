phpenv
======

PHPenv Dockerfile for trusted automated Docker builds.

## PHPenv Dockerfile


This repository contains **Dockerfile** of [PHPenv](https://github.com/phpenv/phpenv) for [Docker](https://www.docker.com/)'s [automated build](https://registry.hub.docker.com/u/vandries/phpenv/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).


### Base Docker Image

* debian:wheezy


### Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://registry.hub.docker.com/u/vandries/phpenv/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull vandries/phpenv`

   (alternatively, you can build an image from Dockerfile: `docker build -t="vandries/phpenv" github.com/vandries/phpenv`)


### Usage

    docker run -d vandries/phpenv

This version intall raw phpenv. Right way to use it :
    
    docker run -i -t vandries/phpend /bin/bash
    $> phpenv install php-5.x.y
    $> phpenv global 5.x.y
    $> phpenv rehash


### Usage with specific version

Images with specific version of PHP are now available.

    docker run -d vandries/phpenv:5.x

Supported versions :

- 5.3 : 5.3.29
- 5.4 : 5.4.32
- 5.5 : 5.5.16
- 5.6 : 5.6.0
