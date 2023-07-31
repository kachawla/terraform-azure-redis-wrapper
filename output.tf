output "result" {
  value = {
    values = {
      resources = [module.redis.id]
      host = module.redis.host
      port = module.redis.port
    }
    secrets = {
      connectionString = module.redis.connectionString
    }
  }
}