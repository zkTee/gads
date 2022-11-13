### Builder Stage
##################################################
FROM rust:1.61

WORKDIR /app
COPY . .

RUN make

RUN cargo test --release
