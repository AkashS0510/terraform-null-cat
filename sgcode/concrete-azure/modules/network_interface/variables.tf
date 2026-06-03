variable "description" {
  type        = string
  description = "Description for the network interface"
}

variable "security_groups" {
  type        = list(string)
  description = "List of security group IDs for the network interface"
}

variable "source_dest_check" {
  type        = bool
  description = "Whether to enable source/destination check"
}

variable "subnet_id" {
  type        = string
  description = "Subnet ID for the network interface"
}

variable "tags" {
  type        = map(string)
  description = "Tags to assign to the network interface"
}