resource "azurerm_resource_group" "rgs" {
  name     = var.resource_group_name
  location = var.location
  }
  resource "azurerm_storage_account" "sa1" {
  depends_on = [ azurerm_resource_group.rgs ]
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}



