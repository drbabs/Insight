locals {
  dev = {
    dev = {
      dns_servers     = ["10.151.5.5", "10.151.5.6", "168.63.129.16"]
      address_space   = ["10.151.0.0/16"]
      subnet_prefixes = ["10.151.1.0/27", "10.151.2.0/24", "10.151.3.0/24", "10.151.4.0/24", "10.151.5.0/24", "10.151.6.0/24"]
      location        = ["EastUS2"]
    }
  }
}
