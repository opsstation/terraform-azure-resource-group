provider "azurerm" {
  features {}
}
locals {
  name        = "app"
  environment = "non-prod"
  location    = "Canada Central"
}

module "resource_group" {
  source      = "../"
  name        = local.name
  environment = local.environment
  location    = local.location
  #resource lock
  resource_lock_enabled = true
  lock_level            = "CanNotDelete"
}