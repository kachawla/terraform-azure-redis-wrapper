output "result" {
  value = {
    resources = [module.redis.id]
    values = {
      host = module.redis.host
      port = module.redis.port
    }
    secrets = {
      password = module.redis.password
    }
  }
  sensitive = true
}
