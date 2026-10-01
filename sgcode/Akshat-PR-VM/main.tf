module "network_interface" {
  source   = "./modules/network_interface"
  for_each = var.network_interfaces

  name                           = each.key
  location                       = each.value.location
  resource_group_name            = each.value.resource_group_name
  accelerated_networking_enabled = each.value.accelerated_networking_enabled
  ip_forwarding_enabled          = each.value.ip_forwarding_enabled
  ip_configuration_name          = each.value.ip_configuration_name
  subnet_id                      = each.value.subnet_id
  private_ip_address_allocation  = each.value.private_ip_address_allocation
  public_ip_address_id           = each.value.public_ip_address_id
}

module "managed_disk" {
  source   = "./modules/managed_disk"
  for_each = var.managed_disks

  name                   = each.key
  location               = each.value.location
  resource_group_name    = each.value.resource_group_name
  storage_account_type   = each.value.storage_account_type
  create_option          = each.value.create_option
  disk_size_gb           = each.value.disk_size_gb
  os_type                = each.value.os_type
  hyper_v_generation     = each.value.hyper_v_generation
  trusted_launch_enabled = each.value.trusted_launch_enabled
  zone                   = each.value.zone
  image_reference_id     = each.value.image_reference_id
}

module "linux_virtual_machine" {
  source   = "./modules/linux_virtual_machine"
  for_each = var.linux_virtual_machines

  name                            = each.key
  location                        = each.value.location
  resource_group_name             = each.value.resource_group_name
  size                            = each.value.size
  admin_username                  = each.value.admin_username
  admin_password                  = var.vm_admin_password
  disable_password_authentication = each.value.disable_password_authentication
  network_interface_ids           = [for k in each.value.network_interface_keys : module.network_interface[k].id]
  zone                            = each.value.zone
  computer_name                   = each.value.computer_name
  provision_vm_agent              = each.value.provision_vm_agent
  os_disk_name                    = each.value.os_disk_name
  os_disk_caching                 = each.value.os_disk_caching
  os_disk_storage_account_type    = each.value.os_disk_storage_account_type
  image_publisher                 = each.value.image_publisher
  image_offer                     = each.value.image_offer
  image_sku                       = each.value.image_sku
  image_version                   = each.value.image_version
  identity_type                   = each.value.identity_type
  vtpm_enabled                    = each.value.vtpm_enabled
  secure_boot_enabled             = each.value.secure_boot_enabled
}
