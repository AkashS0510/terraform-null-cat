variable "subnet_id" {
  type        = string
  description = "Subnet ID to create the ENI in"
}

variable "private_ips" {
  type        = list(string)
  description = "List of private IPs to assign to the ENI"
}

variable "security_groups" {
  type        = list(string)
  description = "List of security group IDs to assign to the ENI"
}

variable "source_dest_check" {
  type        = bool
  description = "Whether to enable source destination checking"
}

variable "description" {
  type        = string
  description = "Description for the network interface"
  default     = null
}

variable "tags" {
  type        = map(string)
  description = "Tags to assign to the network interface"
}