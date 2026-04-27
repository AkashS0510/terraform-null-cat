output "id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.this.id
}

output "arn" {
  description = "ARN of the EC2 instance"
  value       = aws_instance.this.arn
}