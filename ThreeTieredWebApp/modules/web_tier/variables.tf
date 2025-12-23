variable "NETWORK_ID" {
  description = "The ID of the Docker network"
  type        = string
}

variable "EXT_PORT" {
  description = "The external port to expose the web server on"
  type        = number
  default     = 8080
}
