FROM ubuntu:18.04

LABEL \
  MAINTANER="Lisa Seelye https://github.com/lisa"

RUN \
  mkdir /dotfiles && \
  apt-get update && apt-get install -y ansible && \
  rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "/usr/bin/ansible-vault"]
