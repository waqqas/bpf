FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y make gcc libssl-dev bc libelf-dev libcap-dev
RUN apt-get install -y clang gcc-multilib llvm libncurses5-dev git pkg-config
RUN apt-get install -y bison flex graphviz
RUN apt-get install -y vim 

RUN apt-get install -y bpfcc-tools linux-headers-$(uname -r)
ENV LINUX_HEADERS /usr/src/linux-headers-4.15.0-58-generic

RUN apt-get install -y iproute2
RUN apt-get install -y sudo

