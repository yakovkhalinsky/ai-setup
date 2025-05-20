.PHONY: test
test:
	docker compose up test

.PHONY: setup
setup:
	scripts/get-comfyui-src.sh
	scripts/get-flux-dev.sh

.PHONY: up
up:
	docker compose up -d open-webui n8n

.PHONY: down
down:
	docker compose down