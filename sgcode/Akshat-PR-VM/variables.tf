variable "network_interfaces" {
  type = map(object({
    location                       = string
    resource_group_name            = string
    accelerated_networking_enabled = optional(bool, false)
    ip_forwarding_enabled          = optional(bool, false)
    ip_configuration_name          = optional(string, "ipconfig1")
    subnet_id                      = string
    private_ip_address_allocation  = optional(string, "Dynamic")
    public_ip_address_id           = optional(string, null)
  }))
  default = {}
}

variable "managed_disks" {
  type = map(object({
    location               = string
    resource_group_name    = string
    storage_account_type   = string
    create_option          = optional(string, "Empty")
    disk_size_gb           = number
    os_type                = optional(string, null)
    hyper_v_generation     = optional(string, null)
    trusted_launch_enabled = optional(bool, null)
    zone                   = optional(string, null)
    image_reference_id     = optional(string, null)
  }))
  default = {}
}

variable "linux_virtual_machines" {
  type = map(object({
    location                        = string
    resource_group_name             = string
    size                            = string
    admin_username                  = string
    disable_password_authentication = optional(bool, false)
    network_interface_keys          = list(string)
    zone                            = optional(string, null)
    computer_name                   = optional(string, null)
    provision_vm_agent              = optional(bool, true)
    os_disk_name                    = string
    os_disk_caching                 = optional(string, "ReadWrite")
    os_disk_storage_account_type    = optional(string, "Premium_LRS")
    image_publisher                 = string
    image_offer                     = string
    image_sku                       = string
    image_version                   = optional(string, "latest")
    identity_type                   = optional(string, "SystemAssigned")
    vtpm_enabled                    = optional(bool, false)
    secure_boot_enabled             = optional(bool, false)
  }))
  default = {}
}

variable "vm_admin_password" {
  type      = string
  sensitive = true
  default   = "placeholder-ignored"
}
