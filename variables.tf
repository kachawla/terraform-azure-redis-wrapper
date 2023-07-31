variable "resource_group_name" {
  type        = string
  description = "Name of the Azure resource group."
}

variable "location" {
  type        = string
  description = "Redis cache deployment region. Can be different from resource group location."
}

variable "redis_cache_name" {
  type        = string
  description = "Name of the Redis Cache."
}