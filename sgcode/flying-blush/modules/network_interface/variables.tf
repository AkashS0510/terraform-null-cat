variable "subnet_id" {
  description = "Subnet ID in which the ENI resides"
  type        = string
}

variable "private_ips" {
  description = "List of private IPs assigned to the ENI"
  type        = list(string)
}

variable "security_groups" {
  description = "List of security group IDs assigned to the ENI"
  type        = list(string)
}

variable "source_dest_check" {
  description = "Whether source/destination check is enabled"
  type        = bool
}

variable "attached_instance_id" {
  description = "ID of the EC2 instance the ENI is attached to"
  type        = string
}

variable "device_index" {
  description = "Device index of the ENI attachment"
  type        = number
}