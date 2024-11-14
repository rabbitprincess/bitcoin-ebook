FROM rust:latest
RUN cargo install mdbook
WORKDIR /app
COPY . .