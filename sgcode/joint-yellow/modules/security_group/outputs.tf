output "id" {
  description = "Map of Security Group IDs"
  value       = { for k, v in aws_security_group.this : k => v.id }
}