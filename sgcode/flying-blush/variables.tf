variable "region" {
  description = "AWS region"
  type        = string
}

variable "key_pair_key_name" {
  description = "The name for the key pair"
  type        = string
}

variable "key_pair_public_key" {
  description = "The public key material"
  type        = string
  sensitive   = true
}

variable "network_interface_subnet_id" {
  description = "Subnet ID in which the ENI resides"
  type        = string
}

variable "network_interface_private_ips" {
  description = "List of private IPs assigned to the ENI"
  type        = list(string)
}

variable "network_interface_security_groups" {
  description = "List of security group IDs assigned to the ENI"
  type        = list(string)
}

variable "network_interface_source_dest_check" {
  description = "Whether source/destination check is enabled on the ENI"
  type        = bool
}

variable "network_interface_device_index" {
  description = "Device index of the ENI attachment"
  type        = number
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

variable "instance_vpc_security_group_ids" {
  description = "List of security group IDs to associate with the instance"
  type        = list(string)
}

variable "instance_subnet_id" {
  description = "VPC subnet ID to launch the instance in"
  type        = string
}

variable "instance_source_dest_check" {
  description = "Whether source/destination check is enabled on the instance"
  type        = bool
}

variable "instance_tenancy" {
  description = "Tenancy of the instance"
  type        = string
}

variable "instance_ebs_optimized" {
  description = "Whether the instance is EBS-optimized"
  type        = bool
}

variable "instance_monitoring" {
  description = "Whether detailed monitoring is enabled"
  type        = bool
}

variable "instance_capacity_reservation_preference" {
  description = "Capacity reservation preference for the instance"
  type        = string
}

variable "instance_metadata_http_endpoint" {
  description = "Whether the metadata service is available"
  type        = string
}

variable "instance_metadata_http_protocol_ipv6" {
  description = "Whether the IPv6 endpoint for IMDS is enabled"
  type        = string
}

variable "instance_metadata_http_put_response_hop_limit" {
  description = "HTTP PUT response hop limit for instance metadata requests"
  type        = number
}

variable "instance_metadata_http_tokens" {
  description = "Whether IMDSv2 session tokens are required"
  type        = string
}

variable "instance_metadata_instance_metadata_tags" {
  description = "Whether access to instance tags from IMDS is enabled"
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