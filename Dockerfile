FROM centos:7

# Replace shell with bash so we can source files
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
SHELL ["/bin/bash", "-c"]

RUN yum install -y make \
&& yum -y clean all \
&& rm -rf /var/cache

COPY Makefile node.sh ./
ENV HOME /root

# Node-specific variables, normally set in .bashrc
ENV NVM_DIR $HOME/.nvm
ENV NODE_VERSION=14.19.1
ENV PATH $NVM_DIR/versions/node/v$NODE_VERSION/bin:$PATH

RUN make install

