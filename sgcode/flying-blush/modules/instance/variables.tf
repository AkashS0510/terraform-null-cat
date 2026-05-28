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
  description = "Key pair name to use for the instance"
  type        = string
}

variable "vpc_security_group_ids" {
  description = "List of security group IDs to associate with the instance"
  type        = list(string)
}

variable "subnet_id" {
  description = "VPC subnet ID to launch the instance in"
  type        = string
}

variable "source_dest_check" {
  description = "Whether source/destination check is enabled"
  type        = bool
}

variable "tenancy" {
  description = "Tenancy of the instance"
  type        = string
}

variable "ebs_optimized" {
  description = "Whether the instance is EBS-optimized"
  type        = bool
}

variable "monitoring" {
  description = "Whether detailed monitoring is enabled"
  type        = bool
}

variable "capacity_reservation_preference" {
  description = "Capacity reservation preference for the instance"
  type        = string
}

variable "metadata_http_endpoint" {
  description = "Whether the metadata service is available"
  type        = string
}

variable "metadata_http_protocol_ipv6" {
  description = "Whether the IPv6 endpoint for IMDS is enabled"
  type        = string
}

variable "metadata_http_put_response_hop_limit" {
  description = "HTTP PUT response hop limit for instance metadata requests"
  type        = number
}

variable "metadata_http_tokens" {
  description = "Whether IMDSv2 session tokens are required"
  type        = string
}

variable "metadata_instance_metadata_tags" {
  description = "Whether access to instance tags from IMDS is enabled"
  type        = string
}

variable "enclave_options_enabled" {
  description = "Whether Nitro Enclaves are enabled"
  type        = bool
}

variable "root_block_device_delete_on_termination" {
  description = "Whether the root volume is deleted on instance termination"
  type        = bool
}

variable "name_tag" {
  description = "Name tag for the instance"
  type        = string
}