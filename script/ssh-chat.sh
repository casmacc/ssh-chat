#!/usr/bin/env bash

if [ ! -e /.ssh ]; then
  ssh-keygen -t rsa -b 4096 -N ''
fi

/ssh-chat
