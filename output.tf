output "resource_group_id" {
  value       = join("", azurerm_resource_group.rg[*].id)
  description = "The ID of the Resource Group."
}

output "resource_group_name" {
  value       = join("", azurerm_resource_group.rg[*].name)
  description = "The Name which should be used for this Resource Group. Changing this forces a new Resource Group to be created."
}

output "resource_group_location" {
  value       = join("", azurerm_resource_group.rg[*].location)
  description = "The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created."
}

output "tags" {
  value       = module.labels.tags
  description = "A mapping of tags which should be assigned to the Resource Group."
}