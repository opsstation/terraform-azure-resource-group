output "resource_group_id" {
  value       = module.resource_group.resource_group_id
  description = "The ID of the Resource Group."
}

output "resource_group_name" {
  value       = module.resource_group.resource_group_name
  description = "The Name which should be used for this Resource Group. Changing this forces a new Resource Group to be created."
}

output "resource_group_location" {
  value       = module.resource_group.resource_group_location
  description = "The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created."
}

output "tags" {
  value       = module.resource_group.tags
  description = "A mapping of tags which should be assigned to the Resource Group."
}
