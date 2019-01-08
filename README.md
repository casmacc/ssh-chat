# ssh-chat

SSH-CHAT server.  See https://github.com/shazow/ssh-chat to learn more.

## Demo Server

    $ ssh casmacc.plus -p 9000

## Building

    $ docker build . -t casmacc/ssh-chat

## Running 

    $ docker run -p 2022:2022 casmacc/ssh-chat

## SSH Client

From any terminal:

    $ ssh localhost -p 2022

## With Docker Compose

It is possible to start many instances of `ssh-chat` servers on one host, each
listening on a separate port. 

    version: '3'

    # to setup the network, run `docker network create proxynet`
    networks:
      default:
        external:
          name: proxynet
    
    services:
      chat-project1:
        image: casmacc/ssh-chat
        ports:
          - "9000:2022"
        restart: unless-stopped
      chat-project2:
        image: casmacc/ssh-chat
        ports:
          - "9001:2022"
        restart: unless-stopped
    
Then on terminal 1:

    $ ssh <server> -p 9000

and on terminal 2:

    $ ssh <server> -p 9001
