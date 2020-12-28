resource "digitalocean_droplet" "bbb-vm" {
    count = var.number_of_servers
    image  = "ubuntu-16-04-x64"
    name = format("bbb-%s", count.index + 1)
    region = "fra1"
    size   = "s-2vcpu-4gb"
    ssh_keys = [digitalocean_ssh_key.ssh.id]  
    connection {
      host        = self.ipv4_address
      user        = "root"
      type        = "ssh"
      private_key = file("digital_ocean_key")
      timeout     = "2m"
    }
}

resource "digitalocean_ssh_key" "ssh" {
    name = "Terraform Example"
    public_key = file("digital_ocean_key.pub")
}

output "web_ipv4_addresses" {
  description = "List of IPv4 addresses of web Droplets"
  value       = digitalocean_droplet.bbb-vm.*.ipv4_address
}
