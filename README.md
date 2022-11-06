jeksterslab/ralpine
===================
Ivan Jacob Agaloos Pesigan

<!-- badges: start -->
[![Docker Build](https://github.com/jeksterslab/docker-ralpine/actions/workflows/docker-build.yml/badge.svg)](https://github.com/jeksterslab/docker-ralpine/actions/workflows/docker-build.yml)
[![Docker Build and Push](https://github.com/jeksterslab/docker-ralpine/actions/workflows/docker-build-push.yml/badge.svg)](https://github.com/jeksterslab/docker-ralpine/actions/workflows/docker-build-push.yml)
<!-- badges: end -->

## Description

Docker and Apptainer/Singularity containers for R projects based on Alpine Linux.

## Build Docker Container

The `Docker Build and Push` GitHub action builds the Docker container and pushes it to Docker Hub.

## Build Apptainer/Singularity Image File

To build the Apptainer/Singularity image file (`ralpine.sif`),
run the following.

```bash
git clone https://github.com/jeksterslab/docker-ralpine.git
cd docker-ralpine
make
```

## Docker Run

```bash
docker run -it jeksterslab/ralpine
```

## Apptainer Shell

```bash
apptainer shell ralpine.sif
```
