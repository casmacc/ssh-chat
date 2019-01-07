#!/usr/bin/env bash

if [ ! -e .ssh ]; then
  mkdir -p .ssh
  ssh-keygen -t rsa -b 4096 -N '' -f .ssh/id_rsa
fi

./ssh-chat -i $PWD/.ssh/id_rsa
