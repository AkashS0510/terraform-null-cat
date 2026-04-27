variable "region" {
  description = "AWS region"
  type        = string
}

variable "vpcs" {
  description = "Map of VPCs to create"
  type        = map(object({ cidr_block = string, instance_tenancy = string, tags = map(string) }))
}

variable "internet_gateways" {
  description = "Map of internet gateways to create"
  type        = map(object({ vpc_id = string, tags = map(string) }))
}

variable "subnets" {
  description = "Map of subnets to create"
  type        = map(object({ vpc_id = string, cidr_block = string, availability_zone = string, map_public_ip_on_launch = bool, assign_ipv6_address_on_creation = bool, tags = map(string) }))
}

variable "route_tables" {
  description = "Map of route tables to create"
  type = map(object({
    vpc_id = string
    routes = list(object({
      cidr_block     = string
      gateway_id     = optional(string)
      nat_gateway_id = optional(string)
    }))
    tags = map(string)
  }))
}

variable "security_groups" {
  description = "Map of security groups to create"
  type = map(object({
    name        = string
    description = string
    vpc_id      = string
    ingress = list(object({
      from_port       = number
      to_port         = number
      protocol        = string
      cidr_blocks     = optional(list(string))
      security_groups = optional(list(string))
      description     = optional(string)
    }))
    egress = list(object({
      from_port   = number
      to_port     = number
      protocol    = string
      cidr_blocks = optional(list(string))
      description = optional(string)
    }))
    tags = map(string)
  }))
}

variable "instance_ami" {
  description = "AMI ID for the instance"
  type        = string
}

variable "instance_instance_type" {
  description = "Instance type"
  type        = string
}

variable "instance_key_name" {
  description = "Key pair name"
  type        = string
}

variable "instance_subnet_id" {
  description = "Subnet ID for the instance"
  type        = string
}

variable "instance_vpc_security_group_ids" {
  description = "List of security group IDs"
  type        = list(string)
}

variable "instance_availability_zone" {
  description = "Availability zone for the instance"
  type        = string
}

variable "instance_source_dest_check" {
  description = "Whether to enable source/destination check"
  type        = bool
}

variable "instance_ebs_optimized" {
  description = "Whether the instance is EBS optimized"
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
  description = "Whether the IPv6 endpoint for IMDS is enabled"
  type        = string
}

variable "instance_metadata_http_put_response_hop_limit" {
  description = "HTTP PUT response hop limit for instance metadata requests"
  type        = number
}

variable "instance_metadata_http_tokens" {
  description = "Whether session tokens are required for IMDS"
  type        = string
}

variable "instance_metadata_instance_metadata_tags" {
  description = "Whether instance tags are accessible via IMDS"
  type        = string
}

variable "athena_workgroup_name" {
  description = "Name of the Athena workgroup"
  type        = string
}

variable "athena_workgroup_state" {
  description = "State of the workgroup (ENABLED or DISABLED)"
  type        = string
}

variable "athena_workgroup_enforce_workgroup_configuration" {
  description = "Whether workgroup settings override client-side settings"
  type        = bool
}

variable "athena_workgroup_publish_cloudwatch_metrics_enabled" {
  description = "Whether CloudWatch metrics are enabled"
  type        = bool
}

variable "athena_workgroup_requester_pays_enabled" {
  description = "Whether requester pays is enabled"
  type        = bool
}

variable "athena_workgroup_selected_engine_version" {
  description = "Selected Athena engine version"
  type        = string
}