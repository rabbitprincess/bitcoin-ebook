.PHONY: build run

build:
	docker buildx build \
	--platform linux/amd64,linux/arm64 \
	-t dreamcacao/mdbook:v0.0.1 \
	-t dreamcacao/mdbook:latest \
	--push .

run:
	docker compose up -d