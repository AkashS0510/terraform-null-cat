output "id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.this.id
}

output "arn" {
  description = "ARN of the EC2 instance"
  value       = aws_instance.this.arn
}

output "primary_network_interface_id" {
  description = "ID of the primary network interface"
  value       = aws_instance.this.primary_network_interface_id
}