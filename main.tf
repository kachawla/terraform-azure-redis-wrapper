terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0"
    }
  }
}

resource "random_uuid" "name" {
}

module "redis" {
  source  = "kachawla/test/azure"

  redis_cache_name    = "redis-${random_uuid.name.result}"
  location            = var.location
  resource_group_name = var.context.azure.resourceGroup.name
}
