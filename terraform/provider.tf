terraform {
  backend "remote" {
    organization = "pettypiece"
    workspaces {
      name = "pettypiece-ca"
    }
  }
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "1.22.2"
    }
  }
}

