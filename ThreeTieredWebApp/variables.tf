variable "db_password" {
  description = "Password for the database"
  type        = string
  sensitive   = true
}

variable "db_volume_name" {
  description = "Name for the DB volume"
  type        = string
  default     = "three_tier_db_data"
}

variable "web_port" {
  description = "External port for the web server"
  type        = number
  default     = 8080
}
