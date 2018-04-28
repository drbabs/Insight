output "resource_group_name" {
  description = "The id of the newly created vNet"
  value       = "${module.network.resource_group_name}"
}

output "vnet_id" {
  description = "The id of the newly created vNet"
  value       = "${module.network.vnet_id}"
}

output "gateway_subnet" {
  description = "The ids of subnets created inside the new vNet"
  value       = "${module.network.vnet_subnets[0]}"
}

output "bastion_subnet" {
  description = "The ids of subnets created inside the new vNet"
  value       = "${module.network.vnet_subnets[1]}"
}

output "management_subnet" {
  description = "The ids of subnets created inside the new vNet"
  value       = "${module.network.vnet_subnets[4]}"
}

output "frontend_subnet" {
  description = "The ids of subnets created inside the new vNet"
  value       = "${module.network.vnet_subnets[2]}"
}

output "backend_Subnet" {
  description = "The ids of subnets created inside the new vNet"
  value       = "${module.network.vnet_subnets[3]}"
}

output "security_subnet" {
  description = "The ids of subnets created inside the new vNet"
  value       = "${module.network.vnet_subnets[5]}"
}
