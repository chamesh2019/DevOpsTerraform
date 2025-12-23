output "web_container_name" {
  value       = docker_container.nginx.name
  description = "The name of the web server container"
}

output "web_external_url" {
  value       = "http://localhost:${var.EXT_PORT}"
  description = "The URL to access the web server"
}
