variable "name" {
  type = string
}

variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "size" {
  type = string
}

variable "admin_username" {
  type = string
}

variable "admin_password" {
  type      = string
  sensitive = true
}

variable "disable_password_authentication" {
  type    = bool
  default = false
}

variable "network_interface_ids" {
  type = list(string)
}

variable "zone" {
  type    = string
  default = null
}

variable "computer_name" {
  type    = string
  default = null
}

variable "provision_vm_agent" {
  type    = bool
  default = true
}

variable "os_disk_name" {
  type = string
}

variable "os_disk_caching" {
  type    = string
  default = "ReadWrite"
}

variable "os_disk_storage_account_type" {
  type    = string
  default = "Premium_LRS"
}

variable "image_publisher" {
  type = string
}

variable "image_offer" {
  type = string
}

variable "image_sku" {
  type = string
}

variable "image_version" {
  type    = string
  default = "latest"
}

variable "identity_type" {
  type    = string
  default = "SystemAssigned"
}

variable "vtpm_enabled" {
  type    = bool
  default = false
}

variable "secure_boot_enabled" {
  type    = bool
  default = false
}
