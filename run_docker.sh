#!/usr/bin/env bash

docker run --user $(id -u):$(id -g) -v/etc/passwd:/etc/passwd -v/etc/shadow:/etc/shadow -v/etc/group:/etc/group -v$(pwd):/home/$(id -nu) -w/home/$(id -nu) -it bpf bash

