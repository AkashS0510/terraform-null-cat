variable "ami" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "key_name" {
  type    = string
  default = null
}

variable "subnet_id" {
  type = string
}

variable "vpc_security_group_ids" {
  type    = list(string)
  default = []
}

variable "iam_instance_profile" {
  type    = string
  default = null
}

variable "availability_zone" {
  type    = string
  default = null
}

variable "tenancy" {
  type    = string
  default = "default"
}

variable "monitoring" {
  type    = bool
  default = false
}

variable "ebs_optimized" {
  type    = bool
  default = false
}

variable "source_dest_check" {
  type    = bool
  default = true
}

variable "tags" {
  type    = map(string)
  default = {}
}

variable "metadata_options" {
  type = object({
    http_endpoint               = optional(string, "enabled")
    http_tokens                 = optional(string, "optional")
    http_put_response_hop_limit = optional(number, 1)
    instance_metadata_tags      = optional(string, "disabled")
  })
  default = null
}

variable "root_block_device" {
  type = object({
    volume_type           = optional(string, null)
    volume_size           = optional(number, null)
    delete_on_termination = optional(bool, true)
    encrypted             = optional(bool, false)
  })
  default = null
}
