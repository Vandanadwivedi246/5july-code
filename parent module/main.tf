module "resource_group_name" {

rg_details = var.rg_details
source = "../resource group"
}

module "storage_account" {
depends_on = [ module.resource_group_name ]
rg_details = var.rg_details
sa_details = var.sa_details
source = "../storage account"
}

