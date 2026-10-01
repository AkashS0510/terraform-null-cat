variable "name" {
  type = string
}

variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "storage_account_type" {
  type = string
}

variable "create_option" {
  type    = string
  default = "Empty"
}

variable "hyper_v_generation" {
  type    = string
  default = null
}

variable "trusted_launch_enabled" {
  type    = bool
  default = null
}

variable "zone" {
  type    = string
  default = null
}

variable "image_reference_id" {
  type    = string
  default = null
}

variable "disk_size_gb" {
  type = number
}

variable "os_type" {
  type    = string
  default = null
}
