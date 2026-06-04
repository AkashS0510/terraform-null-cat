output "id" {
  description = "The ARM resource ID of the role assignment"
  value       = "/providers/Microsoft.Authorization/roleAssignments/${var.name}"
}
