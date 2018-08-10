FROM ubuntu:18.04

RUN apt-get update
RUN apt-get -y install vim tree curl wget git
RUN wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

WORKDIR spare

COPY * /spare/profile/

ENV TERM=xterm-256color

RUN echo "source /spare/profile/profile" >> /root/.bashrc

CMD ["/bin/bash"]