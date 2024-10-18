# Makefile for managing the project

.PHONY: all grpc-api db iceberg porter vault run-tests

all: grpc-api db iceberg porter vault

grpc-api:
\t@echo "Building the gRPC Transparency API..."
\tcd src/grpc-transparency-api && go build

db:
\t@echo "Setting up TimescaleDB..."
\tdocker-compose -f scripts/docker-compose.yml up -d

iceberg:
\t@echo "Setting up Apache Iceberg..."
\tcd src/apache-iceberg && ./setup_iceberg.sh

porter:
\t@echo "Setting up Porter Bundles..."
\tcd src/porter-bundles && ./create_porter_bundle.sh

vault:
\t@echo "Integrating HashiCorp Vault..."
\tcd src/hashicorp-vault-integration && ./setup_vault.sh

run-tests:
\t@echo "Running tests..."
\tgo test ./src/...
