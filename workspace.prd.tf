locals {
  prd = {
    prd = {
      dns_servers     = ["10.181.5.5", "10.181.5.6", "168.63.129.16"]
      address_space   = ["10.181.0.0/16"]
      subnet_prefixes = ["10.181.1.0/27", "10.181.2.0/24", "10.181.3.0/24", "10.181.4.0/24", "10.181.5.0/24", "10.181.6.0/24"]
      location        = ["EastUS2"]
    }
  }
}