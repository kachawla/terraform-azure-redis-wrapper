output "result" {
  value = {
    resources = [module.redis.id]
    values = {
      host = module.redis.host
      port = module.redis.port
    }
    secrets = {
      connectionString = module.redis.connectionString
    }
  }
  sensitive = true
}
