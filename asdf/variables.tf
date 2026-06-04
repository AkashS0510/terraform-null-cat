variable "subscription_id" {
  description = "Azure subscription ID"
  type        = string
}
variable "role_assignments" {
  description = "Map of role assignments to manage"
  type = map(object({
    name               = string
    scope              = string
    role_definition_id = string
    principal_id       = string
    principal_type     = string
  }))
  default = {}
}
