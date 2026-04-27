output "id" {
  description = "Map of Route Table IDs"
  value       = { for k, v in aws_route_table.this : k => v.id }
}