variable "region" {
  description = "AWS region where resources will be managed"
  type        = string
}

variable "iam_instance_profile_name" {
  description = "Name of the IAM instance profile"
  type        = string
}

variable "iam_instance_profile_path" {
  description = "Path for the IAM instance profile"
  type        = string
}

variable "iam_instance_profile_role" {
  description = "Name of the IAM role to associate with the instance profile"
  type        = string
}

variable "key_pair_key_name" {
  description = "Name of the key pair"
  type        = string
}

variable "key_pair_public_key" {
  description = "The public key material"
  type        = string
  sensitive   = true
}

variable "instance_ami" {
  description = "AMI ID to use for the instance"
  type        = string
}

variable "instance_instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "instance_availability_zone" {
  description = "Availability zone for the instance"
  type        = string
}

variable "instance_ebs_optimized" {
  description = "Whether the instance is EBS optimized"
  type        = bool
}

variable "instance_source_dest_check" {
  description = "Whether to enable source/destination checking"
  type        = bool
}

variable "instance_tenancy" {
  description = "Tenancy of the instance"
  type        = string
}

variable "instance_monitoring" {
  description = "Whether detailed monitoring is enabled"
  type        = bool
}

variable "instance_vpc_security_group_ids" {
  description = "List of security group IDs to associate with the instance"
  type        = list(string)
}

variable "instance_subnet_id" {
  description = "Subnet ID for the instance"
  type        = string
}

variable "instance_capacity_reservation_preference" {
  description = "Capacity reservation preference for the instance"
  type        = string
}

variable "instance_cpu_core_count" {
  description = "Number of CPU cores"
  type        = number
}

variable "instance_cpu_threads_per_core" {
  description = "Number of threads per CPU core"
  type        = number
}

variable "instance_enclave_options_enabled" {
  description = "Whether Nitro Enclaves are enabled"
  type        = bool
}

variable "instance_metadata_http_endpoint" {
  description = "Whether the metadata service is available"
  type        = string
}

variable "instance_metadata_http_protocol_ipv6" {
  description = "Whether the IPv6 endpoint for instance metadata service is enabled"
  type        = string
}

variable "instance_metadata_http_put_response_hop_limit" {
  description = "HTTP PUT response hop limit for instance metadata requests"
  type        = number
}

variable "instance_metadata_http_tokens" {
  description = "Whether session tokens are required for metadata service"
  type        = string
}

variable "instance_metadata_instance_metadata_tags" {
  description = "Whether access to instance tags from metadata service is enabled"
  type        = string
}

variable "instance_root_block_device_delete_on_termination" {
  description = "Whether the root volume should be destroyed on instance termination"
  type        = bool
}

variable "instance_tags" {
  description = "Tags to assign to the instance"
  type        = map(string)
}

variable "eni_subnet_id" {
  description = "Subnet ID for the network interface"
  type        = string
}

variable "eni_private_ips" {
  description = "List of private IPs to assign to the ENI"
  type        = list(string)
}

variable "eni_security_groups" {
  description = "List of security group IDs to assign to the ENI"
  type        = list(string)
}

variable "eni_source_dest_check" {
  description = "Whether to enable source destination checking for the ENI"
  type        = bool
}

variable "eni_device_index" {
  description = "Device index for the ENI attachment"
  type        = number
}