variable "NETWORK_ID" {
  description = "The ID of the Docker network to connect the container to"
  type = string
}

variable "DB_PASSWORD" {
    description = "The password for the database"
    type = string
}

variable "VOLUME_NAME" {
    description = "The volume to use for the database"
    type = string
}