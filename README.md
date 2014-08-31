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

