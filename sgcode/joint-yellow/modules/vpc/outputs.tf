output "id" {
  description = "Map of VPC IDs"
  value       = { for k, v in aws_vpc.this : k => v.id }
}