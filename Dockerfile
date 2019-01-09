# NOTES
# - ssh-ken generation is done by the `ssh-chat.sh` script
# - ssh-chat binary is available on http://files.casmacc.plus

FROM ubuntu:18.04

LABEL maintainer="andy@r210.com"

WORKDIR /root
RUN apt-get update
RUN apt-get install wget -y -q
RUN apt-get install openssh-server -y -q
RUN wget -q http://files.casmacc.net/sshchat/ssh-chat1.7 -O ssh-chat
COPY script/ssh-chat.sh ssh-chat.sh
RUN chmod a+rx ssh-chat*

CMD ./ssh-chat.sh
