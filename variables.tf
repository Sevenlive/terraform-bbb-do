variable "cloudflare_email" {
  description = "The email associated with the account. This can also be specified with the CLOUDFLARE_EMAIL shell environment variable."
  default     = "default"
}

variable "cloudflare_api_token" {
  description = "The Cloudflare API token. This can also be specified with the CLOUDFLARE_TOKEN shell environment variable."
  default     = "default"
}

variable "cloudflare_zone" {
  description = "The DNS zone to add the record to."
  default     = "default"
}

variable "do_token" {
	description = "Digital Ocean Access Key"
}

# Adjust number of servers to match your load
variable "number_of_servers" {
  default = "2"
}

