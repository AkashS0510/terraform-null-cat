variable "name" {
  type = string
}

variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "accelerated_networking_enabled" {
  type    = bool
  default = false
}

variable "ip_forwarding_enabled" {
  type    = bool
  default = false
}

variable "ip_configuration_name" {
  type    = string
  default = "ipconfig1"
}

variable "subnet_id" {
  type = string
}

variable "private_ip_address_allocation" {
  type    = string
  default = "Dynamic"
}

variable "public_ip_address_id" {
  type    = string
  default = null
}
