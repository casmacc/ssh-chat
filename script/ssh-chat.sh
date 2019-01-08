#!/usr/bin/env bash

# Use this script to run the ssh-chat server.
# Run as a Docker CMD by root user in `/root`. 

if [ -e .ssh/id_rsa ]; then
  echo "USING EXISTING SSH KEY"
else
  echo "GENERATING NEW SSH KEY"
  mkdir -p .ssh
  ssh-keygen -t rsa -b 4096 -N '' -f .ssh/id_rsa
fi

./ssh-chat -i $PWD/.ssh/id_rsa
