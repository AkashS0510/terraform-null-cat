output "instance_id" {
  description = "ID of the EC2 instance"
  value       = module.instance.id
}

output "instance_arn" {
  description = "ARN of the EC2 instance"
  value       = module.instance.arn
}

output "iam_instance_profile_name" {
  description = "Name of the IAM instance profile"
  value       = module.iam_instance_profile.name
}

output "iam_instance_profile_arn" {
  description = "ARN of the IAM instance profile"
  value       = module.iam_instance_profile.arn
}

output "key_pair_key_name" {
  description = "Name of the key pair"
  value       = module.key_pair.key_name
}

output "network_interface_id" {
  description = "ID of the network interface"
  value       = module.network_interface.id
}