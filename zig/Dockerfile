FROM ubuntu:bionic
MAINTAINER Joel Martin <github@martintribe.org>

##########################################################
# General requirements for testing or common across many
# implementations
##########################################################

RUN apt-get -y update

# Required for running tests
RUN apt-get -y install make python

# Some typical implementation and test requirements
RUN apt-get -y install curl libreadline-dev libedit-dev

RUN mkdir -p /mal
WORKDIR /mal

##########################################################
# Specific implementation requirements
##########################################################

RUN cd /tmp && \
    curl -sfLO https://ziglang.org/download/0.3.0/zig-linux-x86_64-0.3.0.tar.xz && \
    tar xf zig-linux-x86_64-0.3.0.tar.xz && \
    rm zig-linux-x86_64-0.3.0.tar.xz && \
    mv zig-linux-x86_64-0.3.0 /opt/zig

ENV PATH /opt/zig:$PATH
ENV HOME /mal/zig
