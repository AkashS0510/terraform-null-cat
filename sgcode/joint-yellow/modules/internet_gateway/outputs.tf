output "id" {
  description = "Map of Internet Gateway IDs"
  value       = { for k, v in aws_internet_gateway.this : k => v.id }
}