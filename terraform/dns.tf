data "digitalocean_domain" "pettypiece_ca" {
  name = "pettypiece.ca"
}

resource "digitalocean_record" "www_pettypiece_ca" {
  domain = data.digitalocean_domain.pettypiece_ca.name
  type   = "A"
  name   = "www"
  value  = digitalocean_droplet.pettypiece_ca.ipv4_address
  ttl    = 60
}

resource "digitalocean_record" "pettypiece_ca" {
  domain = data.digitalocean_domain.pettypiece_ca.name
  type   = "A"
  name   = "@"
  value  = digitalocean_droplet.pettypiece_ca.ipv4_address
  ttl    = 60
}

resource "digitalocean_record" "vpn_pettypiece_ca" {
  domain = data.digitalocean_domain.pettypiece_ca.name
  type   = "A"
  name   = "vpn"
  value  = digitalocean_droplet.pettypiece_ca.ipv4_address
  ttl    = 60
}

resource "digitalocean_record" "wireguard_pettypiece_ca" {
  domain = data.digitalocean_domain.pettypiece_ca.name
  type   = "A"
  name   = "wireguard"
  value  = digitalocean_droplet.pettypiece_ca.ipv4_address
  ttl    = 60
}

resource "digitalocean_record" "uptime_pettypiece_ca" {
  domain = data.digitalocean_domain.pettypiece_ca.name
  type   = "A"
  name   = "uptime"
  value  = digitalocean_droplet.pettypiece_ca.ipv4_address
  ttl    = 60
}
