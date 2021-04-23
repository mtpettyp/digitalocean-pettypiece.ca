variable "api_token" {
  type    = string
  default = "${env("DIGITALOCEAN_TOKEN")}"
}

source "digitalocean" "base_image" {
  api_token    = "${var.api_token}"
  image        = "ubuntu-20-04-x64"
  size         = "512mb"
  region       = "nyc3"
  ssh_username = "root"
}

build {
  sources = [
    "source.digitalocean.base_image"
  ]

  provisioner "ansible" {
    playbook_file        = "../main.yml"
    galaxy_file          = "../requirements.yml"
    galaxy_force_install = true
  }
}