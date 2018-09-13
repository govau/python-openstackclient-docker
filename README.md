[![Docker Automated build](https://img.shields.io/docker/automated/govau/python-openstackclient.svg?style=plastic)](https://hub.docker.com/r/govau/python-openstackclient/)
[![Docker Build Status](https://img.shields.io/docker/build/govau/python-openstackclient.svg?style=plastic)](https://hub.docker.com/r/govau/python-openstackclient/)
[![CircleCI](https://circleci.com/gh/govau/python-openstackclient-docker.svg?style=svg)](https://circleci.com/gh/govau/python-openstackclient-docker)

# Openstack CLI deployed using docker

Provides a docker image with the openstack CLI.

[CircleCI](https://circleci.com/gh/govau/python-openstackclient) is used to test each change. The image on the `master` branch is automatically published on [docker hub](https://hub.docker.com/r/govau/python-openstackclient/).

## How to use it?

*Assumes you have docker running*

This image is published on [docker hub](https://hub.docker.com/r/govau/python-openstackclient/). To use it (with your current directory mounted at /data):

```
docker run -it --rm -v $PWD:/data --workdir=/data govau/python-openstackclient openstack --version
```

The above command when run the first time will automatically pull the latest image from docker hub. If you run it again later, it may use the previously pulled version. To pull the latest version:

```
docker pull govau/python-openstackclient
```

## How to build it locally?

*Assumes you have docker running*

1. Clone this repository:
```
git clone https://github.com/govau/python-openstackclient.git
```

2. Build the image and tag it python-openstackclient:
```
docker build --tag python-openstackclient python-openstackclient
```

3. Verify the built image:
```
docker run -it --rm python-openstackclient openstack --version
```
