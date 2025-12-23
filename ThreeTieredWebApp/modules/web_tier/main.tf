terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.0"
    }
  }
}

resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.image_id
  name  = "web_server"

  ports {
    internal = 80
    external = var.EXT_PORT
  }

  networks_advanced {
    name = var.NETWORK_ID
  }
}
