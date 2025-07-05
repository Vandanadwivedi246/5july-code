module "resource_group_name" {
  source = "../resource group"
}

module "storage_account_name" {
depends_on = [ module.resource_group_name ]

  source = "../storage account"
}