FROM rust:latest
RUN apt-get update && apt-get install -y git
RUN cargo install mdbook
WORKDIR /book

CMD ["mdbook", "build", "-d", "/book/output"]