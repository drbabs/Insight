locals {
  jimnet1 = {
    jimnet1 = {
      dns_servers     = ["10.254.5.5", "10.254.5.6", "168.63.129.16"]
      address_space   = ["10.254.0.0/16"]
      subnet_prefixes = ["10.254.1.0/27", "10.254.2.0/24", "10.254.3.0/24", "10.254.4.0/24", "10.254.5.0/24", "10.254.6.0/24"]
      location        = ["UKSouth"]
    }
  }
}
