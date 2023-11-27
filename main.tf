terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0"
    }
  }
}

provider "azurerm" {
  alias  = "local"
  features {}
}

resource "random_id" "resource" {
  keepers = {
    # Generate a new id for every unique resource id
    resource_id = var.context.resource.id
  }

  byte_length = 8
}

module "redis" {
  source  = "kachawla/test/azure"

  redis_cache_name    = "redis-${random_id.resource.hex}"
  location            = var.location
  resource_group_name = var.context.azure.resourceGroup.name
}
