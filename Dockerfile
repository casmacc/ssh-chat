FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install wget -y -q
RUN apt-get install openssh-server -y -q
RUN wget -q http://files.casmacc.plus/sshchat/ssh-chat1.7 -o ssh-chat
COPY script/ssh-chat.sh /ssh-chat.sh
RUN chmod a+rx /ssh-chat*

# CMD ssh-chat1.7