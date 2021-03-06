.PHONY: build deploy lint test functions help
.DEFAULT_GOAL := help

# Configuration.
SHELL = /bin/bash
ROOT_DIR = $(shell pwd)
SCRIPT_DIR = $(ROOT_DIR)/script

# Bin scripts
CLEAN = $(shell) $(SCRIPT_DIR)/clean.sh
DOCUMENTATION = $(shell) $(SCRIPT_DIR)/documentation.sh
DEPLOY = $(shell) $(SCRIPT_DIR)/deploy.sh
PYENV = $(shell) $(SCRIPT_DIR)/pyenv.sh
INSTALL = $(shell) $(SCRIPT_DIR)/install.sh
LINT = $(shell) $(SCRIPT_DIR)/lint.sh
TEST = $(shell) $(SCRIPT_DIR)/test.sh
RUNSERVER = $(shell) $(SCRIPT_DIR)/runserver.sh


build:  ## Build docker container
	docker-compose build


clean: ## clean Files compiled
	$(CLEAN)

runserver:  ## Runserver
	make clean
	$(RUNSERVER)

up: ## Up application
	make build
	docker-compose up


deploy: ## Deploy Application
	make clean
	$(DEPLOY)


environment: ## Make environment for developer
	$(PYENV)


documentation: ## Make Documentation
	make clean
	$(DOCUMENTATION)


install: ## Install Dependences
	$(INSTALL)


lint: ## Clean files unnecesary
	make clean
	$(LINT)


test: ## make test
	$(TEST)


help: ## Show help text
	@echo "Commands:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "    \033[36m%-20s\033[0m %s\n", $$1, $$2}'