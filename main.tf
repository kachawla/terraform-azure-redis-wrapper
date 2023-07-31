terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0"
    }
  }
}

module "redis" {
  source  = "kachawla/test/azure"

  redis_cache_name    = var.redis_cache_name
  location            = var.location
  resource_group_name = var.resource_group_name
}