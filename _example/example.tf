provider "azurerm" {
  features {}
}

module "resource_group" {
  source = "../"

  environment = "-resource-group"
  label_order = ["name", "environment", ]

  name     = "OpsStation"
  location = "North Europe"

  #resource lock
  resource_lock_enabled = true
  lock_level            = "CanNotDelete"
}