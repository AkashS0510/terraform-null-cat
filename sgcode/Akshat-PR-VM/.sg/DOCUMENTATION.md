# Terraform/OpenTofu Infrastructure Documentation: global-settings

## 1. Overview

This Terraform configuration manages an Azure Linux virtual machine and its supporting network infrastructure. The code was **auto-generated** from discovered cloud resources and **imported into state** until `terraform plan` showed `0 to add, 0 to change, 0 to destroy`, confirming that infrastructure matches the configuration exactly.

### What Was Done
- **Discovery:** Three existing Azure resources were identified (VM, managed disk, network interface).
- **Code Generation:** Terraform modules and root configuration were created to represent these resources.
- **Import:** `imports.sh` was executed once to import each resource into the local Terraform state.
- **Reconciliation:** Plan was run repeatedly with adjustments until all resources were in perfect sync with the configuration.
- **Final State:** Infrastructure is now fully codified and drift-free.

## 2. Resources

| Terraform Address | Provider Type | Real-world Name/ID | Purpose |
|---|---|---|---|
| `module.linux_virtual_machine["akshat-pr"].azurerm_linux_virtual_machine.this` | azurerm_linux_virtual_machine | `akshat-pr` | Linux VM (Standard_D2s_v3) running Ubuntu 20.04 LTS with SystemAssigned identity, TrustedLaunch security, vTPM and Secure Boot enabled. Location: eastus2, Zone: 1. |
| `module.managed_disk["akshat-pr_OsDisk_1_fe73cbbd2f524e25a936622373fab5eb"].azurerm_managed_disk.this` | azurerm_managed_disk | `akshat-pr_OsDisk_1_fe73cbbd2f524e25a936622373fab5eb` | Premium LRS managed disk (30 GiB) serving as the OS disk for the VM. Created from Ubuntu 20.04 LTS image (FromImage option), Hyper-V V2 generation with TrustedLaunch enabled. |
| `module.network_interface["akshat-pr400_z1"].azurerm_network_interface.this` | azurerm_network_interface | `akshat-pr400_z1` | Network interface attached to the VM with accelerated networking enabled. Dynamic private IP (10.5.0.9) in default subnet, associated with public IP (`akshat-pr-ip`) and NSG (`akshat-pr-nsg`). |

## 3. Module Structure

### Root Module
- **Location:** `/mnt/sg_workspace/user/global-settings`
- **Purpose:** Orchestrates three child modules via `for_each` loops for dynamic resource management.
- **Key Files:**
  - `main.tf` — Three module blocks with `for_each` iteration over `var.network_interfaces`, `var.managed_disks`, and `var.linux_virtual_machines`.
  - `variables.tf` — Root-level variable definitions for the three resource maps and the sensitive VM admin password.
  - `outputs.tf` — Empty (no root outputs defined).
  - `providers.tf` — Azure provider configuration.
  - `versions.tf` — Terraform and provider version constraints (azurerm ~> 3.0).

### Child Modules

#### 1. **module.network_interface** (`modules/network_interface/`)
- **Resource:** `azurerm_network_interface.this`
- **Loop Key:** `"akshat-pr400_z1"`
- **Variables:**
  - `name`, `location`, `resource_group_name` — basic Azure properties
  - `accelerated_networking_enabled` (default: false) — passed as true for this instance
  - `ip_forwarding_enabled` (default: false)
  - `ip_configuration_name` (default: "ipconfig1")
  - `subnet_id` — full Azure resource ID of the target subnet (not managed in this stack)
  - `private_ip_address_allocation` (default: "Dynamic")
  - `public_ip_address_id` (optional) — full Azure resource ID of associated public IP (not managed in this stack)
- **Output:** `id` — the Azure resource ID of the network interface
- **Purpose:** Creates a network interface with a single IP configuration, optionally linked to a public IP and with accelerated networking for higher throughput.

#### 2. **module.managed_disk** (`modules/managed_disk/`)
- **Resource:** `azurerm_managed_disk.this`
- **Loop Key:** `"akshat-pr_OsDisk_1_fe73cbbd2f524e25a936622373fab5eb"`
- **Variables:**
  - `name`, `location`, `resource_group_name` — basic Azure properties
  - `storage_account_type` — SKU for performance (e.g., "Premium_LRS")
  - `create_option` (default: "Empty") — passed as "FromImage" for this instance to create disk from a marketplace image
  - `disk_size_gb` — capacity in GiB
  - `os_type` (optional, default: null) — passed as "Linux" to denote OS disk
  - `hyper_v_generation` (optional, default: null) — passed as "V2" for second-generation Hyper-V support
  - `trusted_launch_enabled` (optional, default: null) — passed as true to enable TrustedLaunch security profile
  - `zone` (optional, default: null) — passed as "1" to place disk in availability zone 1
  - `image_reference_id` (optional, default: null) — full Azure resource ID of the marketplace image (required when `create_option = "FromImage"`)
- **Output:** `id` — the Azure resource ID of the managed disk
- **Purpose:** Creates a managed disk with OS capabilities and optional creation from a pre-defined image, supporting advanced security profiles.

#### 3. **module.linux_virtual_machine** (`modules/linux_virtual_machine/`)
- **Resource:** `azurerm_linux_virtual_machine.this`
- **Loop Key:** `"akshat-pr"`
- **Variables:**
  - `name`, `location`, `resource_group_name`, `size` — basic VM properties
  - `admin_username` — passed as "azureuser"
  - `admin_password` (sensitive) — set from root-level `var.vm_admin_password` (write-only, ignored by lifecycle block)
  - `disable_password_authentication` (default: false) — controls SSH key requirement
  - `network_interface_ids` — list of Azure resource IDs from the network_interface module (interpolated via `for` loop)
  - `zone` (optional, default: null) — passed as "1" for zone-pinned VM
  - `computer_name` (optional, default: null) — hostname within the OS
  - `provision_vm_agent` (default: true) — enables Azure VM Agent for extensions
  - `os_disk_name`, `os_disk_caching`, `os_disk_storage_account_type` — OS disk configuration
  - `image_publisher`, `image_offer`, `image_sku`, `image_version` — marketplace image reference
  - `identity_type` (default: "SystemAssigned") — Azure Managed Identity type
  - `vtpm_enabled` (default: false) — passed as true for TrustedLaunch security profile
  - `secure_boot_enabled` (default: false) — passed as true for UEFI Secure Boot
- **Blocks:**
  - `os_disk {}` — inline OS disk configuration (name, caching, storage type)
  - `source_image_reference {}` — marketplace image reference (publisher, offer, sku, version)
  - `identity {}` — Azure Managed Identity configuration
  - `boot_diagnostics {}` — empty block (enables boot diagnostics with managed storage, URI is null)
  - `lifecycle { ignore_changes = [admin_password] }` — prevents drift detection on the write-only admin_password field
- **Output:** `id` — the Azure resource ID of the virtual machine
- **Purpose:** Creates a full Linux VM with managed identity, security hardening (TrustedLaunch, vTPM, Secure Boot), and attachment to specified network interfaces.

### External Modules
None. All modules are internal (defined under `modules/` in the root directory).

## 4. How Import Works

### Initial Import Process (Already Completed)

The file `imports.sh` in the root directory contains three `terraform import` commands that were run once to populate the initial state:

```bash
#!/bin/sh
set -e
"$1" import -var-file environments/sg.tfvars 'module.network_interface["akshat-pr400_z1"].azurerm_network_interface.this' '/subscriptions/a97621d8-9158-4681-81b6-38b1222afba4/resourceGroups/private-runner/providers/Microsoft.Network/networkInterfaces/akshat-pr400_z1'
"$1" import -var-file environments/sg.tfvars 'module.managed_disk["akshat-pr_OsDisk_1_fe73cbbd2f524e25a936622373fab5eb"].azurerm_managed_disk.this' '/subscriptions/a97621d8-9158-4681-81b6-38b1222afba4/resourceGroups/private-runner/providers/Microsoft.Compute/disks/akshat-pr_OsDisk_1_fe73cbbd2f524e25a936622373fab5eb'
"$1" import -var-file environments/sg.tfvars 'module.linux_virtual_machine["akshat-pr"].azurerm_linux_virtual_machine.this' '/subscriptions/a97621d8-9158-4681-81b6-38b1222afba4/resourceGroups/private-runner/providers/Microsoft.Compute/virtualMachines/akshat-pr'
```

Each command:
1. Takes the binary path as the first argument (e.g., `bash imports.sh /path/to/terraform`)
2. Imports the remote Azure resource (identified by its full Azure resource ID) into the local Terraform state under the specified address
3. Uses the `-var-file environments/sg.tfvars` flag to ensure variables are loaded during import

### Why Imports Are One-Time Only

Once resources are imported, their state is persisted in `terraform.tfstate` (local) or a configured backend. Re-running the import script is unnecessary and will fail because Terraform will detect that the resources are already in state.

### Re-importing a Single Resource (If State Is Lost)

If the state file is lost or corrupted and a single resource needs to be re-imported:

```bash
terraform import -var-file environments/sg.tfvars 'module.network_interface["akshat-pr400_z1"].azurerm_network_interface.this' '/subscriptions/a97621d8-9158-4681-81b6-38b1222afba4/resourceGroups/private-runner/providers/Microsoft.Network/networkInterfaces/akshat-pr400_z1'
```

Replace the Terraform address and Azure resource ID as needed. The Azure resource IDs are listed in `environments/sg.tfvars` under the `subnet_id`, `public_ip_address_id`, and `image_reference_id` fields, and can also be found in the Azure portal or via `az resource show` commands.

## 5. How to Use the Code

### Initialize Terraform

First-time setup:

```bash
terraform init
```

This downloads the Azure provider (version ~> 3.0) and initializes the working directory.

### Plan Changes

To preview what Terraform will do:

```bash
terraform plan -var-file=environments/sg.tfvars
```

Expected output after reconciliation: `Plan: 0 to add, 0 to change, 0 to destroy` (no drift).

### Apply Changes

To apply the configuration (if changes are detected):

```bash
terraform apply -var-file=environments/sg.tfvars
```

For automation, pass `-auto-approve` to skip the interactive confirmation:

```bash
terraform apply -auto-approve -var-file=environments/sg.tfvars
```

### Targeting Another Environment

To use the code with a different environment (e.g., a "prod" environment):

1. **Copy the base tfvars file:**
   ```bash
   cp environments/sg.tfvars environments/prod.tfvars
   ```

2. **Edit the new file** to change resource names, locations, sizes, or other parameters. For example:
   ```hcl
   # environments/prod.tfvars
   linux_virtual_machines = {
     "prod-vm" = {
       location                        = "westus2"
       resource_group_name             = "prod-rg"
       size                            = "Standard_D4s_v3"
       # ... other fields ...
     }
   }
   ```

3. **Plan and apply with the new file:**
   ```bash
   terraform plan -var-file=environments/prod.tfvars
   terraform apply -var-file=environments/prod.tfvars
   ```

**No `.tf` file edits are required.** The module logic remains the same; only the input variables change per environment.

## 6. Variables

### Root-Level Variables

#### `var.network_interfaces` (type: `map(object(...))`; default: `{}`)
Map of network interface configurations. Key is the NIC name; value contains:
- `location` (required, string) — Azure region
- `resource_group_name` (required, string)
- `accelerated_networking_enabled` (optional, bool; default: false)
- `ip_forwarding_enabled` (optional, bool; default: false)
- `ip_configuration_name` (optional, string; default: "ipconfig1")
- `subnet_id` (required, string) — full Azure resource ID of the subnet (NOT managed in this stack)
- `private_ip_address_allocation` (optional, string; default: "Dynamic") — "Static" or "Dynamic"
- `public_ip_address_id` (optional, string; default: null) — full Azure resource ID of a public IP (NOT managed in this stack)

**Current Value (from `environments/sg.tfvars`):**
```hcl
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
```

#### `var.managed_disks` (type: `map(object(...))`; default: `{}`)
Map of managed disk configurations. Key is the disk name; value contains:
- `location` (required, string) — Azure region
- `resource_group_name` (required, string)
- `storage_account_type` (required, string) — e.g., "Premium_LRS", "Standard_LRS", "StandardSSD_LRS"
- `create_option` (optional, string; default: "Empty") — "Empty", "FromImage", "Copy", etc.
- `disk_size_gb` (required, number)
- `os_type` (optional, string; default: null) — "Windows", "Linux", or null for data disks
- `hyper_v_generation` (optional, string; default: null) — "V1" or "V2"
- `trusted_launch_enabled` (optional, bool; default: null) — true/false or null
- `zone` (optional, string; default: null) — "1", "2", "3", or null
- `image_reference_id` (optional, string; default: null) — full Azure resource ID of a marketplace image (required when `create_option = "FromImage"`)

**Current Value (from `environments/sg.tfvars`):**
```hcl
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
```

#### `var.linux_virtual_machines` (type: `map(object(...))`; default: `{}`)
Map of Linux VM configurations. Key is the VM name; value contains:
- `location` (required, string) — Azure region
- `resource_group_name` (required, string)
- `size` (required, string) — VM SKU, e.g., "Standard_D2s_v3"
- `admin_username` (required, string)
- `disable_password_authentication` (optional, bool; default: false) — if true, SSH key auth only
- `network_interface_keys` (required, list of strings) — keys from `var.network_interfaces` to attach
- `zone` (optional, string; default: null) — "1", "2", "3", or null
- `computer_name` (optional, string; default: null) — hostname for the OS
- `provision_vm_agent` (optional, bool; default: true)
- `os_disk_name` (required, string) — name of the OS disk resource
- `os_disk_caching` (optional, string; default: "ReadWrite") — "ReadOnly", "ReadWrite", or "None"
- `os_disk_storage_account_type` (optional, string; default: "Premium_LRS")
- `image_publisher` (required, string) — marketplace publisher, e.g., "canonical"
- `image_offer` (required, string) — marketplace offer
- `image_sku` (required, string) — marketplace SKU
- `image_version` (optional, string; default: "latest")
- `identity_type` (optional, string; default: "SystemAssigned") — type of Azure Managed Identity
- `vtpm_enabled` (optional, bool; default: false) — virtual TPM
- `secure_boot_enabled` (optional, bool; default: false) — UEFI Secure Boot

**Current Value (from `environments/sg.tfvars`):**
```hcl
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
```

#### `var.vm_admin_password` (type: `string`; sensitive: **YES**; default: `"placeholder-ignored"`)

**⚠️ SENSITIVE VARIABLE — NOT INCLUDED IN SHIPPED FILES**

The VM admin password is a write-only attribute in Azure (never returned by the API after creation). This variable was defined with a placeholder default value (`"placeholder-ignored"`) to satisfy Terraform's type checking. The real password value was stored in a `.gitignore`-d file: `secrets.auto.tfvars`.

**To use this configuration with a real password:**

1. **Create `secrets.auto.tfvars`** in the working directory:
   ```hcl
   vm_admin_password = "YourSecurePasswordHere!"
   ```

   Or pass the variable via CLI:
   ```bash
   terraform plan -var-file=environments/sg.tfvars -var 'vm_admin_password=YourSecurePasswordHere!'
   ```

2. **Important:**
   - Never commit `secrets.auto.tfvars` to version control.
   - The password is passed to the VM at creation time only; changing it in Terraform will **not** update the running VM.
   - Use Azure's password reset feature or VM Agent to change the password after creation.
   - The lifecycle block `ignore_changes = [admin_password]` prevents false drift alerts.

## 7. Infrastructure Graph

```
azurerm_linux_virtual_machine.akshat-pr (VM)
├── network_interface_ids
│   └── azurerm_network_interface.akshat-pr400_z1 (NIC)
│       ├── subnet_id
│       │   └── [external] ubuntu-server-20-lts-vnet/default subnet
│       ├── public_ip_address_id
│       │   └── [external] akshat-pr-ip (public IP)
│       └── network_security_group_id
│           └── [external] akshat-pr-nsg (NSG)
├── source_image_reference
│   └── canonical:0001-com-ubuntu-server-focal:20_04-lts-gen2:latest (marketplace image)
├── os_disk
│   └── [embedded] OS disk config (name, caching, storage type)
├── identity
│   └── SystemAssigned (Azure Managed Identity)
└── security profile
    ├── TrustedLaunch enabled
    ├── vTPM enabled
    └── Secure Boot enabled

azurerm_managed_disk.akshat-pr_OsDisk_1_fe73cbbd2f524e25a936622373fab5eb (OS Disk)
├── created_from_image
│   └── canonical:0001-com-ubuntu-server-focal:20_04-lts-gen2 (marketplace image)
├── hyper_v_generation: V2
├── trusted_launch_enabled: true
├── zone: 1
└── managed_by
    └── azurerm_linux_virtual_machine.akshat-pr
```

**Legend:**
- **→** direct module reference (interpolated)
- **[external]** resource exists in Azure but not managed by this Terraform stack (passed as literal Azure resource IDs)
- **[embedded]** configuration nested within the parent resource

## 8. Notable Decisions & Caveats

### 1. **Managed Disk `create_option = "FromImage"` (Not `"Empty"`)**
   - **Why:** The OS disk was originally created from the Ubuntu 20.04 LTS marketplace image. Using `create_option = "FromImage"` preserves this intent.
   - **Implication:** The `image_reference_id` field is required and must exactly match the Azure image used at creation time. Changing this field will cause the disk to be replaced (destructive).
   - **Related Constraints:** When `create_option = "FromImage"`, the disk must also specify `hyper_v_generation`, `trusted_launch_enabled`, and `zone` to avoid unintended replacements.

### 2. **TrustedLaunch Security Profile**
   - **Hyper-V Generation V2:** Mandatory for TrustedLaunch; V1 is incompatible.
   - **vTPM & Secure Boot:** Both enabled in the VM configuration to activate TrustedLaunch's full security posture.
   - **Disk Constraints:** The OS disk requires `hyper_v_generation = "V2"` and `trusted_launch_enabled = true` to match.
   - **Plan Impact:** Terraform will force-replace the disk/VM if these attributes are modified or omitted.

### 3. **NIC References External Resources**
   - **Not Managed Here:** The `subnet_id`, `public_ip_address_id`, and `network_security_group_id` are passed as full Azure resource IDs and are not defined in this stack.
   - **External IDs in Tfvars:** These IDs are hardcoded in `environments/sg.tfvars` as literal strings. If the external resources change or are deleted, Terraform will not detect drift; you must update the tfvars manually.
   - **Future Enhancement:** If these resources move to a separate Terraform stack, create a shared tfvars or use cross-stack variable passing (e.g., via `terraform_remote_state` data source or module outputs).

### 4. **`admin_password` Is Write-Only**
   - **Azure API Limitation:** The VM admin password is never returned after creation. Terraform cannot detect whether the running password matches the configuration.
   - **Lifecycle Block:** `ignore_changes = [admin_password]` prevents false "drift" alerts on every `plan` run.
   - **Placeholder Default:** The shipped code has `default = "placeholder-ignored"`. Users must provide a real password via `secrets.auto.tfvars` or `-var` before creating a new VM.
   - **Post-Creation Changes:** Changing the password in Terraform does not update the running VM. Use the Azure portal's "Reset password" feature or the VM Agent instead.

### 5. **Boot Diagnostics Block Is Empty**
   - **API Behavior:** The `boot_diagnostics {}` block with no properties enables boot diagnostics using a managed storage account (Azure automatically provisions a storage URI).
   - **No Configuration Override:** This stack does not allow specifying a custom storage account. Boot diagnostics are always auto-managed.
   - **Future Enhancement:** If custom storage is needed, add an optional `storage_account_uri` variable to the Linux VM module.

### 6. **`for_each` Maps for Dynamic Resources**
   - **Scalability:** All three resource types (NIC, disk, VM) use `for_each` loops at the root module level, allowing multiple instances without code duplication.
   - **State Addressing:** Each resource is identified by its map key in the Terraform address, e.g., `module.network_interface["akshat-pr400_z1"].azurerm_network_interface.this`.
   - **Default Empty Maps:** All three variables default to `{}`, so no resources are created unless explicitly provided in tfvars.

### 7. **No Computed Attributes in Output**
   - The module outputs only export the resource `id`. Other computed fields (e.g., private IP, public IP, managed identity principal ID) are available via state queries but not re-exported.
   - **Workaround:** Reference the full module in root outputs if needed, e.g., `module.linux_virtual_machine["akshat-pr"].azurerm_linux_virtual_machine.this.public_ips[0]`.

### 8. **Remaining Drift: None**
   - Plan reconciliation is complete: `0 to add, 0 to change, 0 to destroy`.
   - All discovered resources match the configuration exactly.
   - The `ignore_changes = [admin_password]` lifecycle block suppresses the expected drift on the write-only field.

### 9. **Secrets Management**
   - The file `secrets.auto.tfvars` is **deliberately excluded** from this repository (via `.gitignore`).
   - Users must create it locally with the real `vm_admin_password` value before deploying new infrastructure.
   - For CI/CD, pass the password via environment variable or secrets manager: `terraform plan -var='vm_admin_password=$TF_VAR_VM_ADMIN_PASSWORD'`.

### 10. **Environment-Specific Overrides**
   - All environment-specific values (resource names, sizes, locations, network IDs) are in `environments/sg.tfvars`.
   - Copying and editing this file for a different environment (e.g., `prod.tfvars`) requires no `.tf` code changes.
   - The root modules remain environment-agnostic; all logic is data-driven.
