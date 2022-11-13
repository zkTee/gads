### Builder Stage
##################################################
FROM rust:1.61

WORKDIR .

ARG SCRIPT_DIR=/usr/local/echox

COPY ./scripts/*.sh /usr/local/echox/

RUN chmod +x ${SCRIPT_DIR}/*.sh
RUN sudo apt-get update & sudo apt-get install npm & npm install -g yarn
