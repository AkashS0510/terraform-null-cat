#!/bin/sh
set -e
"$1" import -var-file environments/sg.tfvars 'module.network_interface["akshat-pr400_z1"].azurerm_network_interface.this' '/subscriptions/a97621d8-9158-4681-81b6-38b1222afba4/resourceGroups/private-runner/providers/Microsoft.Network/networkInterfaces/akshat-pr400_z1'
"$1" import -var-file environments/sg.tfvars 'module.managed_disk["akshat-pr_OsDisk_1_fe73cbbd2f524e25a936622373fab5eb"].azurerm_managed_disk.this' '/subscriptions/a97621d8-9158-4681-81b6-38b1222afba4/resourceGroups/private-runner/providers/Microsoft.Compute/disks/akshat-pr_OsDisk_1_fe73cbbd2f524e25a936622373fab5eb'
"$1" import -var-file environments/sg.tfvars 'module.linux_virtual_machine["akshat-pr"].azurerm_linux_virtual_machine.this' '/subscriptions/a97621d8-9158-4681-81b6-38b1222afba4/resourceGroups/private-runner/providers/Microsoft.Compute/virtualMachines/akshat-pr'
