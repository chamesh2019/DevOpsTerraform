# Simple Web Server with Terraform and Docker

This project demonstrates a basic infrastructure-as-code (IaC) setup using **Terraform** to deploy a simple **Nginx** web server as a **Docker** container.

## 🚀 Overview

The configuration performs the following actions:
1.  **Pull Image**: Downloads the latest `nginx` image from Docker Hub.
2.  **Run Container**: Starts a Docker container named `terraform_test_server`.
3.  **Port Mapping**: Maps host port `8080` to container port `80`.

## 🛠️ Prerequisites

Before you begin, ensure you have the following installed:
-   [Terraform](https://developer.hashicorp.com/terraform/downloads) (v1.0.0+)
-   [Docker](https://www.docker.com/products/docker-desktop/) installed and running.

## 📁 Project Structure

-   `main.tf`: The main configuration file containing the provider, image, and container resources.
-   `.terraform.lock.hcl`: Dependency lock file for the Docker provider.

## 🏃 Getting Started

### 1. Initialize Terraform
First, initialize the workspace to download the required Docker provider plugins:
```bash
terraform init
```

### 2. Preview the Infrastructure
Generate an execution plan to see what resources will be created:
```bash
terraform plan
```

### 3. Deploy the Server
Apply the configuration to create the Nginx container:
```bash
terraform apply
```
*(Enter `yes` when prompted)*

### 4. Verify Deployment
Once the apply is complete, you can access the web server at:
[http://localhost:8080](http://localhost:8080)

Alternatively, check the container status via CLI:
```bash
docker ps
```

## 🧹 Cleanup

To stop and remove the container and the image, run:
```bash
terraform destroy
```
*(Enter `yes` when prompted)*

## 📄 License
This project is open-source and available under the MIT License.
