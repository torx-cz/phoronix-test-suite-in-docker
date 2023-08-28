FROM ubuntu:jammy-20230804

# phoronix test suite version
# see: https://github.com/phoronix-test-suite/phoronix-test-suite/releases
ARG version=10.8.4

MAINTAINER torx-cz <torxcz@gmail.com>

ARG DEBIAN_FRONTEND=noninteractive
RUN apt update \
    && apt -y install wget unzip php-cli apt-utils mesa-utils php-xml git-core apt-file zlib1g-dev \
    && apt-file update

WORKDIR /opt
RUN wget https://github.com/phoronix-test-suite/phoronix-test-suite/releases/download/v${version}/phoronix-test-suite-${version}.tar.gz -O pts.tar.gz \
    && tar xzf pts.tar.gz \
    && rm pts.tar.gz \
    && mv /opt/phoronix-test-suite /phoronix-test-suite

WORKDIR /phoronix-test-suite
CMD [ "./phoronix-test-suite", "shell" ]
