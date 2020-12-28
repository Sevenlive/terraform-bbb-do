### The Ansible inventory file
resource "local_file" "AnsibleInventory" {
 content = templatefile("inventory.tmpl",
 {
  public-dns = cloudflare_record.bbbdomain.*.hostname,
  public-ip = digitalocean_droplet.bbb-vm.*.ipv4_address,
  private-id = cloudflare_record.bbbdomain.*.id,
 }
 )
 filename = "inventory"
}