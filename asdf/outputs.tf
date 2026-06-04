output "role_assignment_ids" {
  description = "Map of role assignment ARM IDs"
  value       = { for k, v in module.role_assignment : k => v.id }
}
