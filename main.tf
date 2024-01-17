## Managed By : OpsStation
## Description : This Script is used to create Transfer Server, Transfer User And  labels.
## Copyright @ OpsStation. All Right Reserved.

#Module      : labels
#Description : This terraform module is designed to generate consistent label names and tags
#              for resources. You can use terraform-labels to implement a strict naming
#              convention.
module "labels" {
  source      = "git::https://github.com/opsstation/terraform-azure-labels.git?ref=v1.0.0"
  name        = var.name
  environment = var.environment
  managedby   = var.managedby
  label_order = var.label_order
  repository  = var.repository
}


resource "azurerm_resource_group" "rg" {
  count    = var.enabled ? 1 : 0
  name     = format("%s-rg", module.labels.id)
  location = var.location
  tags     = module.labels.tags


  timeouts {
    create = var.create
    read   = var.read
    update = var.update
    delete = var.delete
  }

}

resource "azurerm_management_lock" "resource_group_lock" {
  count      = var.enabled && var.resource_lock_enabled ? 1 : 0
  name       = format("%s-rg-lock", var.lock_level)
  scope      = azurerm_resource_group.rg[*].id[0]
  lock_level = var.lock_level
  notes      = "This Resource Group is locked by terrafrom"
}
