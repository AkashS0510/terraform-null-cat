variable "name" {
  description = "The unique GUID name of the role assignment"
  type        = string
}
variable "scope" {
  description = "The scope at which the role assignment applies"
  type        = string
}
variable "role_definition_id" {
  description = "The full ID of the role definition"
  type        = string
}
variable "principal_id" {
  description = "The ID of the principal"
  type        = string
}
variable "principal_type" {
  description = "The type of the principal (User, Group, ServicePrincipal)"
  type        = string
}
