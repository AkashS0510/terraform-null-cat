network_interfaces = {
  "akshat-pr400_z1" = {
    location                       = "eastus2"
    resource_group_name            = "private-runner"
    accelerated_networking_enabled = true
    ip_forwarding_enabled          = false
    ip_configuration_name          = "ipconfig1"
    subnet_id                      = "/subscriptions/a97621d8-9158-4681-81b6-38b1222afba4/resourceGroups/private-runner/providers/Microsoft.Network/virtualNetworks/ubuntu-server-20-lts-vnet/subnets/default"
    private_ip_address_allocation  = "Dynamic"
    public_ip_address_id           = "/subscriptions/a97621d8-9158-4681-81b6-38b1222afba4/resourceGroups/private-runner/providers/Microsoft.Network/publicIPAddresses/akshat-pr-ip"
  }
}

managed_disks = {
  "akshat-pr_OsDisk_1_fe73cbbd2f524e25a936622373fab5eb" = {
    location               = "eastus2"
    resource_group_name    = "private-runner"
    storage_account_type   = "Premium_LRS"
    create_option          = "FromImage"
    disk_size_gb           = 30
    os_type                = "Linux"
    hyper_v_generation     = "V2"
    trusted_launch_enabled = true
    zone                   = "1"
    image_reference_id     = "/Subscriptions/a97621d8-9158-4681-81b6-38b1222afba4/Providers/Microsoft.Compute/Locations/eastus2/Publishers/canonical/ArtifactTypes/VMImage/Offers/0001-com-ubuntu-server-focal/Skus/20_04-lts-gen2/Versions/20.04.202310250"
  }
}

linux_virtual_machines = {
  "akshat-pr" = {
    location                        = "eastus2"
    resource_group_name             = "private-runner"
    size                            = "Standard_D2s_v3"
    admin_username                  = "azureuser"
    disable_password_authentication = false
    network_interface_keys          = ["akshat-pr400_z1"]
    zone                            = "1"
    computer_name                   = "akshat-pr"
    provision_vm_agent              = true
    os_disk_name                    = "akshat-pr_OsDisk_1_fe73cbbd2f524e25a936622373fab5eb"
    os_disk_caching                 = "ReadWrite"
    os_disk_storage_account_type    = "Premium_LRS"
    image_publisher                 = "canonical"
    image_offer                     = "0001-com-ubuntu-server-focal"
    image_sku                       = "20_04-lts-gen2"
    image_version                   = "latest"
    identity_type                   = "SystemAssigned"
    vtpm_enabled                    = true
    secure_boot_enabled             = true
  }
}
