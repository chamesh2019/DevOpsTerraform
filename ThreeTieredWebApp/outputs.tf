output "application_url" {
  value       = module.web_tier.web_external_url
  description = "Access your application at this URL"
}

output "database_container" {
  value       = module.db_tier.db_container_name
  description = "The name of the running database container"
}
