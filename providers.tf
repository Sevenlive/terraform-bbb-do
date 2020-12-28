terraform {
  required_providers {
    cloudflare = {
      source = "cloudflare/cloudflare"
      version = "2.14.0"
    }
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "2.3.0"
    }
  }
}
provider "cloudflare" {
  api_token = var.cloudflare_api_token
}

provider "digitalocean" {
  # Configuration options
  token = var.do_token
}
