data "digitalocean_ssh_key" "terraform" {
  name = "Terraform"
}


resource "digitalocean_droplet" "pettypiece_ca" {
  image  = "ubuntu-20-04-x64"
  name   = "pettypiece.ca"
  region = "nyc1"
  size   = "s-1vcpu-1gb"
  ssh_keys = [
    data.digitalocean_ssh_key.terraform.id
  ]
}
