output "id" {
  description = "Map of Subnet IDs"
  value       = { for k, v in aws_subnet.this : k => v.id }
}