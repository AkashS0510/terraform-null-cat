variable "region" {
  type        = string
  description = "AWS region"
}

variable "instances" {
  type = map(object({
    ami_id                               = string
    instance_type                        = string
    availability_zone                    = string
    subnet_id                            = string
    vpc_security_group_ids               = list(string)
    key_name                             = optional(string)
    iam_instance_profile_name            = optional(string)
    source_dest_check                    = bool
    monitoring                           = bool
    ebs_optimized                        = bool
    tenancy                              = string
    metadata_http_endpoint               = string
    metadata_http_tokens                 = string
    metadata_http_put_response_hop_limit = number
    metadata_http_protocol_ipv6          = string
    metadata_instance_metadata_tags      = string
    tags                                 = map(string)
  }))
  description = "Map of EC2 instance configurations"
}

variable "iam_instance_profiles" {
  type = map(object({
    name      = string
    path      = string
    role_name = string
  }))
  description = "Map of IAM instance profile configurations"
}

variable "key_pairs" {
  type = map(object({
    key_name   = string
    public_key = string
  }))
  description = "Map of key pair configurations"
}

variable "network_interfaces" {
  type = map(object({
    subnet_id         = string
    private_ips       = list(string)
    security_groups   = list(string)
    source_dest_check = bool
    description       = optional(string)
    tags              = map(string)
  }))
  description = "Map of network interface configurations"
}