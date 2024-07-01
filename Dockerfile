FROM ubuntu:20.04 AS base

ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y software-properties-common

RUN add-apt-repository ppa:hollywood/ppa
RUN apt update && apt install -y hollywood

CMD [ "/bin/hollywood" ]
