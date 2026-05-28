variable "region" {
  description = "AWS region"
  type        = string
}

variable "key_pair_key_name" {
  description = "Name of the key pair"
  type        = string
}

variable "key_pair_public_key" {
  description = "Public key material for the key pair"
  type        = string
}

variable "network_interface_subnet_id" {
  description = "Subnet ID for the network interface"
  type        = string
}

variable "network_interface_private_ip_address" {
  description = "Primary private IP address for the network interface"
  type        = string
}

variable "network_interface_security_group_id" {
  description = "Security group ID to assign to the network interface"
  type        = string
}

variable "network_interface_source_dest_check" {
  description = "Whether to enable source/destination check on the ENI"
  type        = bool
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
  description = "Availability zone to launch the instance in"
  type        = string
}

variable "instance_subnet_id" {
  description = "Subnet ID to launch the instance in"
  type        = string
}

variable "instance_security_group_id" {
  description = "Security group ID to associate with the instance"
  type        = string
}

variable "instance_source_dest_check" {
  description = "Whether to enable source/destination check"
  type        = bool
}

variable "instance_ebs_optimized" {
  description = "Whether the instance is EBS-optimized"
  type        = bool
}

variable "instance_monitoring" {
  description = "Whether detailed monitoring is enabled"
  type        = bool
}

variable "instance_tenancy" {
  description = "Tenancy of the instance"
  type        = string
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
  description = "Whether the metadata service requires session tokens (IMDSv2)"
  type        = string
}

variable "instance_metadata_instance_metadata_tags" {
  description = "Whether access to instance tags from metadata service is enabled"
  type        = string
}

variable "instance_capacity_reservation_preference" {
  description = "Capacity reservation preference for the instance"
  type        = string
}

variable "instance_enclave_options_enabled" {
  description = "Whether Nitro Enclaves are enabled"
  type        = bool
}

variable "instance_root_block_device_delete_on_termination" {
  description = "Whether the root volume is deleted on instance termination"
  type        = bool
}

variable "instance_name_tag" {
  description = "Name tag for the instance"
  type        = string
}