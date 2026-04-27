variable "ami" {
  description = "AMI ID to use for the instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "availability_zone" {
  description = "Availability zone for the instance"
  type        = string
}

variable "key_name" {
  description = "Key pair name for the instance"
  type        = string
}

variable "iam_instance_profile" {
  description = "IAM instance profile name to attach to the instance"
  type        = string
}

variable "ebs_optimized" {
  description = "Whether the instance is EBS optimized"
  type        = bool
}

variable "source_dest_check" {
  description = "Whether to enable source/destination checking"
  type        = bool
}

variable "tenancy" {
  description = "Tenancy of the instance"
  type        = string
}

variable "monitoring" {
  description = "Whether detailed monitoring is enabled"
  type        = bool
}

variable "vpc_security_group_ids" {
  description = "List of security group IDs to associate with the instance"
  type        = list(string)
}

variable "subnet_id" {
  description = "Subnet ID for the instance"
  type        = string
}

variable "capacity_reservation_preference" {
  description = "Capacity reservation preference for the instance"
  type        = string
}

variable "cpu_core_count" {
  description = "Number of CPU cores"
  type        = number
}

variable "cpu_threads_per_core" {
  description = "Number of threads per CPU core"
  type        = number
}

variable "enclave_options_enabled" {
  description = "Whether Nitro Enclaves are enabled"
  type        = bool
}

variable "metadata_http_endpoint" {
  description = "Whether the metadata service is available"
  type        = string
}

variable "metadata_http_protocol_ipv6" {
  description = "Whether the IPv6 endpoint for instance metadata service is enabled"
  type        = string
}

variable "metadata_http_put_response_hop_limit" {
  description = "HTTP PUT response hop limit for instance metadata requests"
  type        = number
}

variable "metadata_http_tokens" {
  description = "Whether session tokens are required for metadata service"
  type        = string
}

variable "metadata_instance_metadata_tags" {
  description = "Whether access to instance tags from metadata service is enabled"
  type        = string
}

variable "root_block_device_delete_on_termination" {
  description = "Whether the root volume should be destroyed on instance termination"
  type        = bool
}

variable "tags" {
  description = "Tags to assign to the instance"
  type        = map(string)
}