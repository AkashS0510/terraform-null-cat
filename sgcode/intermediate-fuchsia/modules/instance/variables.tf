variable "ami" {
  description = "AMI ID for the instance"
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

variable "subnet_id" {
  description = "Subnet ID to launch the instance in"
  type        = string
}

variable "vpc_security_group_ids" {
  description = "List of security group IDs"
  type        = list(string)
}

variable "key_name" {
  description = "Key pair name"
  type        = string
  default     = null
}

variable "iam_instance_profile" {
  description = "IAM instance profile name"
  type        = string
  default     = null
}

variable "source_dest_check" {
  description = "Whether to enable source/destination check"
  type        = bool
}

variable "ebs_optimized" {
  description = "Whether the instance is EBS optimized"
  type        = bool
}

variable "monitoring" {
  description = "Whether detailed monitoring is enabled"
  type        = bool
}

variable "tenancy" {
  description = "Instance tenancy"
  type        = string
}

variable "tags" {
  description = "Tags to assign to the instance"
  type        = map(string)
  default     = {}
}

variable "metadata_http_endpoint" {
  description = "Whether the metadata service is available"
  type        = string
}

variable "metadata_http_tokens" {
  description = "Whether IMDSv2 is required"
  type        = string
}

variable "metadata_http_put_response_hop_limit" {
  description = "HTTP PUT response hop limit for instance metadata"
  type        = number
}

variable "metadata_http_protocol_ipv6" {
  description = "Whether IPv6 endpoint for IMDS is enabled"
  type        = string
}

variable "metadata_instance_metadata_tags" {
  description = "Whether instance tags are accessible from IMDS"
  type        = string
}