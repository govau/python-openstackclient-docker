FROM alpine:3.8

RUN apk add --update \
  bash \
  libffi-dev \
  openssl-dev \
  python-dev \
  py-pip \
  py-setuptools \
  ca-certificates \
  gcc \
  musl-dev \
  linux-headers;

ENV OPENSTACK_CLI_VERSION "3.16.1"

RUN pip install --upgrade --no-cache-dir python-openstackclient==${OPENSTACK_CLI_VERSION}

RUN apk del gcc musl-dev linux-headers

RUN rm -rf /var/cache/apk/*

VOLUME ["/data"]

CMD ["/bin/bash"]
