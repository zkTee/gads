### Builder Stage
##################################################
FROM rust:1.61

WORKDIR $HOME/worker
COPY . .

RUN cargo test --release
