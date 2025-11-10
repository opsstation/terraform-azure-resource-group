terraform {
  required_version = ">= 1.13.3"
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=4.52.0"
    }
  }
}