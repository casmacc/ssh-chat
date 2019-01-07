# ssh-chat

SSH-CHAT server.

See https://github.com/shazow/ssh-chat

## About

ssh-chat exposed on port 2022.

## Building

    $ docker build . -t casmacc/ssh-chat

## Running Server

    $ docker run -p 2022:2022 casmacc/ssh-chat

## SSH Client

From any terminal:

    $ ssh localhost -p 2022

