### Builder Stage
##################################################
FROM rust:1.61

WORKDIR .

ARG SCRIPT_DIR=/usr/local/echox

COPY ./scripts/*.sh /usr/local/echox/

RUN chmod +x ${SCRIPT_DIR}/*.sh

RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash
RUN apt-get install -y nodejs
RUN npm install -g yarn
