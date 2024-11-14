FROM rust:latest AS builder

RUN apt-get update && apt-get install -y git && \
    cargo install mdbook

FROM debian:bullseye-slim

COPY --from=builder /usr/local/cargo/bin/mdbook /usr/local/bin/mdbook

WORKDIR /book

CMD ["mdbook", "build", "-d", "/book/output"]