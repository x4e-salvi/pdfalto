FROM ubuntu:18.04

USER root
RUN apt-get update && apt-get install -y wget cmake clang git
RUN mkdir /home/pdfalto && cd /home/pdfalto && git clone https://github.com/x4e-salvi/pdfalto.git && cd pdfalto && git submodule update --init --recursive && cmake ./ && make

ENTRYPOINT ["tail", "-f", "/dev/null"]
