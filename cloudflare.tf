# Add a record to the domain
resource "cloudflare_record" "bbbdomain" {
  count   = var.number_of_servers
  zone_id = var.cloudflare_zone
  name    = format("bbb-%s", count.index + 1)
  value   = digitalocean_droplet.bbb-vm[count.index].ipv4_address
  type    = "A"
  ttl     = 3600
}
