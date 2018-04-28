variable "vnet_name" {
  description = "Component id. This can be used to identify the resurce via tags. Essentially set as appname."
  default     = "PCS-VNET"
}

variable "subnet_names" {
  description = "A list of public subnets inside the vNet."
  type        = "list"
  default     = ["GatewaySubnet", "Bastion", "Frontend", "Backend", "Management", "Security"]
}

variable "gateway_subnet_name" {
  description = "A list of public subnets inside the vNet."
  type        = "list"
  default     = ["GatewaySubnet"]
}

variable "resource_group_name" {
  description = "Resource Group Name"
  default     = "PCSNETWORKS-RG"
}

variable "role" {
  description = "Role of the component."
  default     = "NotSpecified"
}

variable "dept" {
  description = "Department that the asset belongs to."
  default     = "NotSpecified"
}

variable "tags" {
  description = "The tags to associate with your network and subnets."
  type        = "map"

  default = {
    tag1 = ""
    tag2 = ""
  }
}

variable "componentid" {
  description = "Component id. This can be used to identify the resurce via tags. Essentially set as appname."
  default     = "IaaS"
}

variable "root_certificate_name" {
  default = "AZRoot"
}

variable "root_certificate" {
  type = "string"

  default = <<EOF
  MIIC6jCCAdagAwIBAgIQjkz2fUnZib1C8z+tDzYw0DAJBgUrDgMCHQUAMBExDzAN
  BgNVBAMTBkFaUm9vdDAeFw0xODA0MDQwNzQ3MzNaFw0zOTEyMzEyMzU5NTlaMBEx
  DzANBgNVBAMTBkFaUm9vdDCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEB
  AJs5f7YDrbP/2vGR2tytTgtCk4MXG//p2k3xud+Fl3FiiLmG7il9SN1UzocVsoUT
  NKhc7UWR4tdTbGTwayRDRBRPsxlWlDJ1Y2R4VG4B0WWzcuEgerDgMBWWQm+3WDnT
  nN9fAEj0yCRHswbZ6Jrfle5j7de6SbJb5xFcd3XnfhhLzcTW4dfw2pj1ycXTEyYh
  w/nNlEI9INmmrAR0Ov+bAFYUjUXlv1y4iEZxskAFtEBslSZBEhcVLlo1qv5RHKCT
  tcyACK2Je9wm7rwr67Nm9QpKAsh97+0q15PFlnpXRlb0KVgxkQlG+diIIedE08BZ
  X4DVoJMp9wxcueF6kUiJrN0CAwEAAaNGMEQwQgYDVR0BBDswOYAQUQnCb/24TAr7
  fMsTf723tKETMBExDzANBgNVBAMTBkFaUm9vdIIQjkz2fUnZib1C8z+tDzYw0DAJ
  BgUrDgMCHQUAA4IBAQCIIceGVa3rsfTlm7k8umgiGHjPF0I+N9Pf2gWJVv4vJYpn
  neWH96Ia6+9IQlaA+IgrSKg0MSBTZplEGRpoGNZrvLpI+vsdEIEvyimNN7u5ButQ
  HlSAsg7mU7wcRIRQXiLx8WVjrOQ2mfwBw0aoWyz9+zuDEHJsSu3WK2SXWa/Kd4zX
  QK0VNol4wqRQvoi6jHoSqnYrfp6sRNWj65A7gfKpJo4/yCfqGTUfuXAxcLUvxRIW
  fGp7iXujgGEycVAl+qVlbqSYKxo8/FOuyZFc9vasWqxTQlF1/5apZYb9m6GwtzzG
  rhmc4I93xi8x/pGZ/s/GwN18DRpFKd2lyCo8fBPA
EOF
}
