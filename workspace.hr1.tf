locals {
  hr1 = {
    hr1 = {
      dns_servers     = ["10.191.5.5", "10.191.5.6", "168.63.129.16"]
      address_space   = ["10.191.0.0/16"]
      subnet_prefixes = ["10.191.1.0/27", "10.191.2.0/24", "10.191.3.0/24", "10.191.4.0/24", "10.191.5.0/24", "10.191.6.0/24"]
      location        = ["EastUS2"]
    }
  }
}
