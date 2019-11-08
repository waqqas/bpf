Introduction
---

This project shows an example of a eBPF program

Build Environment
---

The docker contains all the packages needed to compile the program

Build docker
---

- docker build . -t bpf

Run docker
---

- ./run_docker.sh


Building
---

Within docker, run the following commands

- cd src
- ./compile.sh


Running
---

Adding eBPF program
- sudo ip link set dev <device> xdp obj drop.o

Removing eBPF program
- sudo ip link set dev <device> xdp off

