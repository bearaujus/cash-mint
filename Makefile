DOCKER_COMPOSE_BIN := $(shell which docker-compose)
DOCKER_COMPOSE_FILE_NAME := docker-compose.yml
DOCKER_COMPOSE_ENV_FILE_NAME := .env

# Starts the command in the console directly. To quit, just simply press CTRL+C. environment
.PHONY: run
run: check stop
	sudo $(DOCKER_COMPOSE_BIN) --env-file $(DOCKER_COMPOSE_ENV_FILE_NAME) --remove-orphans up

# Start the command in the background. To quit, just simply run `make stop`.
.PHONY: start
start: check stop
	sudo $(DOCKER_COMPOSE_BIN) --env-file $(DOCKER_COMPOSE_ENV_FILE_NAME) --remove-orphans up -d

# Stop the background processes that created from `make start`.
.PHONY: stop
stop:
	sudo $(DOCKER_COMPOSE_BIN) down

# Status is to see recent logs from background processes that created from `make start`.
.PHONY: status
status:
	sudo $(DOCKER_COMPOSE_BIN) logs

# Perform a simple check to validate docker and required files.
.PHONY: check
check:
	@if [ -z "$(DOCKER_COMPOSE_BIN)" ]; then \
		echo "ERR: docker-compose not found. please install docker. see: https://github.com/bearaujus/cash-mint/README.md#usage"; \
		exit 1; \
	fi
	@echo "OK: docker-compose is present."

	@if [ ! -f .env ]; then \
		echo "ERR: environment file is missing at '$(DOCKER_COMPOSE_ENV_FILE_NAME)'. see: https://github.com/bearaujus/cash-mint/README.md#usage"; \
		exit 1; \
	fi
	@echo "OK: environment file is present."

	@if [ ! -f .env ]; then \
		echo "ERR: docker compose file is missing at '$(DOCKER_COMPOSE_FILE_NAME)'. please try to re-clone cash-mint"; \
		exit 1; \
	fi
	@echo "OK: docker compose file is present."
