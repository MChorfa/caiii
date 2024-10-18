# Composite AI Impact Index

## Description

The **Composite AI Impact Index** project is designed to measure the performance, cost, environmental impact, and compliance of AI models. It includes the following components:

1. **Transparency API**: For ensuring data provenance and integrity via gRPC.
2. **Apache Iceberg**: To manage metadata and track data transformations.
3. **TimescaleDB**: For storing time-series data such as model performance, cost, and environmental impact.
4. **Prometheus**: For real-time monitoring and alerting.
5. **Grafana**: For visualizing the metrics and index results.
6. **CI/CD pipelines**: Managed via **Dagger Go SDK** to ensure automated and secure deployment.
7. **Porter**: Used for bundling the entire solution (infrastructure, services, applications) for repeatable deployments.
8. **Secrets Management**: **HashiCorp Vault** securely handles credentials, API keys, and other sensitive data.
9. **Compliance Checks (OSCAL)**: Integrated compliance verification against regulations like GDPR, HIPAA.

## Directory Structure

```shell
.
├── src
│   ├── transparency
│   ├── timescale-db
│   ├── dagger-pipelines
│   ├── compliance-check
│   ├── apache-iceberg
│   ├── porter-bundles
│   └── hashicorp-vault-integration
├── docs
├── configs
│   ├── prometheus
│   └── grafana-dashboards
└── scripts
```

## Installation

1. Clone the repository:

   ```shell
      git clone <repository-url>
   ```

2. Install dependencies for the gRPC API, TimescaleDB, Apache Iceberg, Dagger, and Porter (instructions provided in respective subdirectories).
3. Integrate **HashiCorp Vault** for secure secrets management (details in the `hashicorp-vault-integration` folder).

## CI/CD

The **CI/CD** pipeline is managed through **Dagger Go SDK** to ensure secure and automated deployments.

## Solution Bundling with Porter

**Porter** is used to bundle the entire solution, including infrastructure, services, and applications, into portable packages for repeatable deployments across various environments.
