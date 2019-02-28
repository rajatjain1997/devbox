FROM ubuntu:18.04

RUN apt-get update
RUN apt-get -y install vim tree curl wget git sudo
RUN apt-get install -qqy x11-apps
RUN echo "source /spare/.devbox/.bashprofile" >> /root/.bashrc

RUN echo "root:devbox" | chpasswd
RUN groupadd -g 999 grp && \
    useradd -r -u 999 -g grp usr
RUN mkdir /home/usr
RUN cp /root/.bashrc /home/usr

WORKDIR spare

COPY * /spare/.devbox/

RUN chown -R usr /home/usr
RUN chown -R usr /spare

USER usr:grp
RUN wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

ENV TERM=xterm-256color

CMD ["/bin/bash"]