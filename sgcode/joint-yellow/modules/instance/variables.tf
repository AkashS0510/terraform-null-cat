variable "ami" {
  description = "AMI ID for the instance"
  type        = string
}

variable "instance_type" {
  description = "Instance type"
  type        = string
}

variable "key_name" {
  description = "Key pair name"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID for the instance"
  type        = string
}

variable "vpc_security_group_ids" {
  description = "List of security group IDs"
  type        = list(string)
}

variable "availability_zone" {
  description = "Availability zone for the instance"
  type        = string
}

variable "source_dest_check" {
  description = "Whether to enable source/destination check"
  type        = bool
}

variable "ebs_optimized" {
  description = "Whether the instance is EBS optimized"
  type        = bool
}

variable "tenancy" {
  description = "Tenancy of the instance"
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
  description = "Whether session tokens are required for IMDS"
  type        = string
}

variable "metadata_instance_metadata_tags" {
  description = "Whether instance tags are accessible via IMDS"
  type        = string
}