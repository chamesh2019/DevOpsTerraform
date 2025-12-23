terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.0"
    }
  }
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}

# 1. Create the Shared Network
resource "docker_network" "app_network" {
  name = "app_tier_network"
}

# 2. Deploy the Database Tier
module "db_tier" {
  source      = "./modules/db_tier"
  NETWORK_ID  = docker_network.app_network.id
  DB_PASSWORD = var.db_password
  VOLUME_NAME = var.db_volume_name
}

# 3. Deploy the Web Tier
module "web_tier" {
  source     = "./modules/web_tier"
  NETWORK_ID = docker_network.app_network.id
  EXT_PORT   = var.web_port
}