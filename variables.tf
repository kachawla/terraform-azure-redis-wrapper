variable "location" {
  type        = string
  description = "Redis cache deployment region."
}

variable "context" {
  description = "This variable contains Radius recipe context."

  type = any
}