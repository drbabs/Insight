terraform {
  backend "azurerm" {
    resource_group_name  = "rg-cloudservices-base"
    storage_account_name = "rgcloudservicesbase7626"
    container_name       = "pcsnetworks"
    key                  = "pcsnetworks.terraform.state"
    access_key           = "LR1JMZMoOAB/Dhpoei8b/9jIxcO4NJw+8lJliHps+tRoUrVrnzgwMTrWoPA9cFXY1jg+8vX/ThJe/qVhJdfklQ=="
  }
}