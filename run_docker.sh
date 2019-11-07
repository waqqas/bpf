#!/usr/bin/env bash

docker run --user $(id -u):$(id -g) -v/etc/passwd:/etc/passwd -v/etc/group:/etc/group -it bpf bash

