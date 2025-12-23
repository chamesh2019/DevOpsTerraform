terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
      version = "~> 3.0.0"
    }
  }
}

resource "docker_image" "postgres" {
  name = "postgres:15-alpine"
  keep_locally = false
}

resource "docker_volume" "persistant_volume" {
  name = var.VOLUME_NAME
}

resource "docker_container" "postgres" {
  image = docker_image.postgres.image_id
  name  = "postgres_db"

  env = [
    "POSTGRES_PASSWORD=${var.DB_PASSWORD}",
    "POSTGRES_USER=postgres",
    "POSTGRES_DB=app_db"
  ]

  volumes {
    volume_name    = docker_volume.persistant_volume.name
    container_path = "/var/lib/postgresql/data"
  }

  networks_advanced {
    name = var.NETWORK_ID
  }
}
