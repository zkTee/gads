### Builder Stage
##################################################
FROM rust:1.61

WORKDIR .

ARG SCRIPT_DIR=/usr/local/echox

COPY ./scripts/*.sh /usr/local/echox/

RUN chmod +x ${SCRIPT_DIR}/*.sh
RUN apt-get update
RUN apt-get install npm
RUN npm install -g yarn
