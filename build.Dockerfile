### Builder Stage
##################################################

WORKDIR /app
COPY . .

RUN make

RUN cargo test --release
