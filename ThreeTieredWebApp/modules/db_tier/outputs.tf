output "db_container_name" {
  value       = docker_container.postgres.name
  description = "The name of the database container"
}

output "db_hostname" {
  value       = docker_container.postgres.name
  description = "The hostname for the database (same as container name in the same network)"
}
