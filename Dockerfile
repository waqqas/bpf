FROM ubuntu:19.04

RUN apt-get update
RUN apt-get install -y make gcc libssl-dev bc libelf-dev libcap-dev
RUN apt-get install -y clang gcc-multilib llvm libncurses5-dev git pkg-config
RUN apt-get install -y bison flex graphviz

