output "result" {
  value = {
    values = {
      resources = [module.redis.redis_id, module.logs.log_analytics_workspace_id, module.logs.logs_storage_account_id, module.rg.resource_group_id]
      host = module.redis.redis_hostname
      port = module.redis.redis_ssl_port
    }
    secrets = {
      connectionString = module.redis.redis_primary_connection_string
    }
  }
}