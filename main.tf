locals {
  workspaces = "${merge(local.dev, local.uat, local.prd, local.hr1, local.jimnet, local.tufftest, local.pauls, local.matt)}"
  workspace  = "${local.workspaces[terraform.workspace]}"
}

module "network" {
  source              = "git::https://10.150.5.4:8443/scm/flx/pcs_coremodules.git//core//network"                                 //Module Location. Point to VCS (VSTS) - Mandatory
  version             = "~> 1.1.1"                                                                                                 //Module Version. - Optional
  location            = "${element(local.workspace["location"],0)}"                                                                //Location of where to create the resources. - Mandatory
  vnet_name           = "${var.vnet_name}"                                                                                         //vNet Name. - Mandatory if you want to create a vNet.
  create_vnet         = "1"
  address_space       = "${element(local.workspace["address_space"],0)}"                                                           //Uncomment and set the vNet address prefix if you want to create the VNET above. - Mandatory if you want to create a vNet.
  dns_servers         = "${local.workspace["dns_servers"]}"
  subnet_names        = "${var.subnet_names}"                                                                                      //Subnet Names in order of the subnet prefixes to ensure that they are mapped. - Mandatory
  subnet_prefixes     = "${local.workspace["subnet_prefixes"]}"
  resource_group_name = "${var.resource_group_name}"                                                                               //Resource group where the subnet needs to be created. - Mandatory
}

module "vnetgateway" {
  source                = "git::https://10.150.5.4:8443/scm/flx/pcs_coremodules.git//core//vnetgateway"
  version               = "~> 1.1.1"
  location              = "${element(local.workspace["location"],0)}"
  subnet_id             = "${module.network.vnet_subnets[0]}"
  resource_group_name   = "${module.network.resource_group_name}"
  root_certificate_name = "${var.root_certificate_name}"
  root_certificate      = "${var.root_certificate}"
}
