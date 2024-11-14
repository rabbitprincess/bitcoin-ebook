FROM rust:latest
RUN cargo install mdbook
WORKDIR /app
COPY . .
CMD ["mdbook", "serve", "--hostname", "0.0.0.0"]