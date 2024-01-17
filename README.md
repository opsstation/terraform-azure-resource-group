# Terraform Infrastructure as Code (IaC) - Azure Resource Group Module

## Table of Contents
- [Introduction](#introduction)
- [Usage](#usage)
- [Module Inputs](#module-inputs)
- [Module Outputs](#module-outputs)
- [Authors](#authors)
- [License](#license)

## Introduction
This Terraform module creates structured labels for Azure resources with specific attributes.

## Usage

- Use the module by referencing its source and providing the required variables.

```hcl
module "resource_group" {
  source = "git::https://github.com/opsstation/terraform-azure-resource-group.git?ref=v1.0.0"

  environment = "-resource-group"
  label_order = ["name", "environment", ]

  name     = "OpsStation"
  location = "North Europe"

  #resource lock
  resource_lock_enabled = true
  lock_level            = "CanNotDelete"
}
```
Please ensure you specify the correct 'source' path for the module.

## Module Inputs

- `name`: The name of the resource group.
- `environment`: The environment (e.g., "test", "production").
- `location`: The Azure region for the resource group.
- `resource_lock_enabled`: Enable or disable resource lock (true/false).
- `lock_level`: The lock level (e.g., "CanNotDelete").

## Module Outputs
- This module currently does not provide any outputs.

# Examples
For detailed examples on how to use this module, please refer to the '[example](https://github.com/opsstation/terraform-azure-labels/tree/master/_example)' directory within this repository.

## Authors
Your Name
Replace '[License Name]' and '[Your Name]' with the appropriate license and your information. Feel free to expand this README with additional details or usage instructions as needed for your specific use case.

## License
This project is licensed under the MIT License - see the [LICENSE](https://github.com/opsstation/terraform-azure-labels/blob/master/LICENSE) file for details.



<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >=2.90.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >=2.90.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_labels"></a> [labels](#module\_labels) | git::https://github.com/opsstation/terraform-azure-labels.git | v1.0.0 |

## Resources

| Name | Type |
|------|------|
| [azurerm_management_lock.resource_group_lock](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_lock) | resource |
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create"></a> [create](#input\_create) | Used when creating the Resource Group | `string` | `"30m"` | no |
| <a name="input_delete"></a> [delete](#input\_delete) | Used when deleting the Resource Group | `string` | `"70m"` | no |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Flag to control the module creation | `bool` | `true` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment (e.g. `prod`, `dev`, `staging`). | `string` | `"-OpsStation"` | no |
| <a name="input_label_order"></a> [label\_order](#input\_label\_order) | Label order, e.g. `name`,`application`. | `list(any)` | <pre>[<br>  "name",<br>  "environment"<br>]</pre> | no |
| <a name="input_location"></a> [location](#input\_location) | Location where resource should be created | `string` | `"West Europe"` | no |
| <a name="input_lock_level"></a> [lock\_level](#input\_lock\_level) | n/a | `string` | `"CanNotDelete"` | no |
| <a name="input_managedby"></a> [managedby](#input\_managedby) | ManageBY, eg, 'OpsStation' | `string` | `"company/opsstation"` | no |
| <a name="input_name"></a> [name](#input\_name) | The Name which should be used for this Resource Group.Changing this forces a new Resource Group to be created. | `string` | `"resource-group"` | no |
| <a name="input_read"></a> [read](#input\_read) | Used when retrieving the Resource Group | `string` | `"90m"` | no |
| <a name="input_repository"></a> [repository](#input\_repository) | Terraform current module repo | `string` | `"https://github.com/opsstation/terraform-azure-resource-group"` | no |
| <a name="input_resource_lock_enabled"></a> [resource\_lock\_enabled](#input\_resource\_lock\_enabled) | enable or disable lock resource | `bool` | `false` | no |
| <a name="input_update"></a> [update](#input\_update) | Used when updating the Resource Group | `string` | `"50m"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_resource_group_id"></a> [resource\_group\_id](#output\_resource\_group\_id) | The ID of the Resource Group. |
| <a name="output_resource_group_location"></a> [resource\_group\_location](#output\_resource\_group\_location) | The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created. |
| <a name="output_resource_group_name"></a> [resource\_group\_name](#output\_resource\_group\_name) | The Name which should be used for this Resource Group. Changing this forces a new Resource Group to be created. |
| <a name="output_tags"></a> [tags](#output\_tags) | A mapping of tags which should be assigned to the Resource Group. |
<!-- END_TF_DOCS -->