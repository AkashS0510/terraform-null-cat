variable "subnet_id" {
  description = "Subnet ID to create the ENI in"
  type        = string
}

variable "security_groups" {
  description = "List of security group IDs"
  type        = list(string)
}

variable "source_dest_check" {
  description = "Whether to enable source/destination check"
  type        = bool
}

variable "description" {
  description = "Description for the network interface"
  type        = string
  default     = null
}

variable "tags" {
  description = "Tags to assign to the network interface"
  type        = map(string)
  default     = {}
}