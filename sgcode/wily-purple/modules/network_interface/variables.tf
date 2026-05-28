variable "subnet_id" {
  description = "Subnet ID for the network interface"
  type        = string
}

variable "private_ip_address" {
  description = "Primary private IP address for the network interface"
  type        = string
}

variable "security_group_id" {
  description = "Security group ID to assign to the network interface"
  type        = string
}

variable "source_dest_check" {
  description = "Whether to enable source/destination check on the ENI"
  type        = bool
}