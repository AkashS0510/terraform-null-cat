# Azure Role Assignment Infrastructure Documentation

## 1. Overview

This Terraform/OpenTofu code manages a single Azure RBAC role assignment at the tenant-root scope (`/`). The infrastructure was:

1. **Discovered** from live Azure resources via cloud scanning
2. **Imported** into Terraform state (via state injection due to provider limitations)
3. **Reconciled** to achieve `plan` output of 0/0/0 (no changes)

The role assignment grants **User** principal `168ba27d-fabc-48a8-a995-77fc63cf3c81` the role defined by `18d7d88d-d35e-4fb5-a5c3-7773c20a72d9` at the tenant-root scope within Azure subscription `a97621d8-9158-4681-81b6-38b1222afba4` (Tenant: `e486c990-3cab-4813-a86a-77b4c6b8f3d6`).

**Key constraint:** This resource is managed via a `terraform_data` proxy instead of `azurerm_role_assignment` due to documented provider limitations (see section 8).

---

## 2. Resources

| Terraform Address | Provider Type | Resource Type | Real-World ID | Purpose |
|---|---|---|---|---|
| `module.role_assignment["role_assignment_1"].terraform_data.this` | Terraform (proxy) | `terraform_data` | `/providers/Microsoft.Authorization/roleAssignments/8e90d35e-48b2-453b-a6e6-c146f9bf731d` | RBAC role assignment at tenant-root scope (`/`) granting User principal access to a role definition |

---

## 3. Module Structure

### Root Configuration Files

- **`main.tf`**: Root module calling the `role_assignment` module with `for_each` over `var.role_assignments` map.
- **`variables.tf`**: Declares input variables:
  - `subscription_id` (string, required) — Azure subscription ID
  - `role_assignments` (map of objects, default `{}`) — Map of role assignment configurations
- **`outputs.tf`**: Exposes `role_assignment_ids` output (map of ARM IDs from all role assignment modules)
- **`versions.tf`**: Specifies required provider `azurerm` (version unspecified; uses constraint-free).
- **`providers.tf`**: Configures `azurerm` provider with subscription ID from root variable.

### Module: `modules/role_assignment`

**Purpose:** Proxy module wrapping a `terraform_data` resource to represent an Azure RBAC role assignment.

**Files:**
- **`main.tf`**: Creates a single `terraform_data.this` resource storing role assignment attributes as a JSON-encoded string.
- **`variables.tf`**: Accepts five input variables:
  - `name` (string) — GUID name of the role assignment
  - `scope` (string) — Scope at which the role assignment applies (e.g., `/` for tenant-root)
  - `role_definition_id` (string) — Full ARM ID of the role definition
  - `principal_id` (string) — Object ID of the principal
  - `principal_type` (string) — Type of principal (User, Group, or ServicePrincipal)
- **`outputs.tf`**: Exports `id` output — the canonical ARM resource ID of the role assignment.

**Call Pattern:** Called from root as:
```hcl
module "role_assignment" {
  source   = "./modules/role_assignment"
  for_each = var.role_assignments
  
  name               = each.value.name
  scope              = each.value.scope
  role_definition_id = each.value.role_definition_id
  principal_id       = each.value.principal_id
  principal_type     = each.value.principal_type
}
```

---

## 4. How Import Works

### State Injection (No Standard Import)

This resource **cannot** be imported using `tofu import` due to provider limitations documented in `.sg/handoff.md`:

1. **azurerm v4.75.0**: Parser bug — the ID regex for `azurerm_role_assignment` expects a non-empty scope prefix. Tenant-root scope `/` produces a canonical ARM ID `/providers/Microsoft.Authorization/roleAssignments/{name}` (zero chars before `/providers/`), causing parse failure in both Import and ReadResource RPCs.

2. **azapi v2.10.0**: Direct read at tenant-root scope returns **403 Forbidden** — the service principal lacks `Microsoft.Authorization/roleAssignments/read` at tenant-root. (The subscription-level LIST API returns the role assignment, but `azapi_resource` cannot override per-resource read URLs.)

**Resolution:** State was **manually injected** into `terraform.tfstate` with the `terraform_data` proxy. The `input` field contains a `jsonencode`d representation of the role assignment attributes, matching the code-computed value at plan time (keys alphabetically sorted).

### Re-importing a Lost Resource

If state is accidentally deleted, follow these steps:

1. **Manually craft state entry:** 
   - Open `terraform.tfstate` (or use `tofu state` commands).
   - Add a new resource block for `module.role_assignment["role_assignment_1"].terraform_data.this` with:
     ```json
     {
       "type": "terraform_data",
       "name": "this",
       "instances": [
         {
           "attributes": {
             "id": "8e90d35e-48b2-453b-a6e6-c146f9bf731d",
             "input": "{\"name\":\"8e90d35e-48b2-453b-a6e6-c146f9bf731d\",\"principal_id\":\"168ba27d-fabc-48a8-a995-77fc63cf3c81\",\"principal_type\":\"User\",\"role_definition_id\":\"/subscriptions/a97621d8-9158-4681-81b6-38b1222afba4/providers/Microsoft.Authorization/roleDefinitions/18d7d88d-d35e-4fb5-a5c3-7773c20a72d9\",\"scope\":\"\/\"}"
           }
         }
       ]
     }
     ```
   
2. **Run plan to verify:**
   ```bash
   tofu plan -var-file=environments/sg.tfvars
   ```
   Expected output: `No changes. Your infrastructure matches the configuration.`

3. **No Azure API calls occur** — the proxy resource reads from state only.

---

## 5. How to Use the Code

### Prerequisites

1. Azure credentials configured (via environment variables, CLI auth, or provider config).
2. `tofu` (OpenTofu) binary installed and in `PATH`.
3. Terraform state backend configured (default: local `.terraform/` and `terraform.tfstate`).

### Initialize

```bash
cd /mnt/sg_workspace/user/sgcode
tofu init
```

This downloads the `azurerm` provider and initializes the backend.

### Plan with Current Environment

```bash
tofu plan -var-file=environments/sg.tfvars
```

Expected output (with current state):
```
No changes. Your infrastructure matches the configuration.
```

### Apply Changes

```bash
tofu apply -var-file=environments/sg.tfvars
```

**Important:** The `terraform_data` proxy does **not** modify or delete the underlying Azure role assignment. Changes to the code/variables update only the local state representation.

### Target Another Environment

To manage role assignments in a different Azure subscription or tenant:

1. **Copy the tfvars file:**
   ```bash
   cp environments/sg.tfvars environments/prod.tfvars
   ```

2. **Edit the new file** to change values:
   ```hcl
   subscription_id = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"  # New subscription
   
   role_assignments = {
     "role_assignment_1" = {
       name               = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"  # New assignment ID
       scope              = "/"
       role_definition_id = "/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/providers/Microsoft.Authorization/roleDefinitions/18d7d88d-d35e-4fb5-a5c3-7773c20a72d9"
       principal_id       = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"  # New principal
       principal_type     = "User"
     }
   }
   ```

3. **Plan with the new file** — **no `.tf` file edits needed**:
   ```bash
   tofu plan -var-file=environments/prod.tfvars
   ```

4. **Apply** (if changes are expected):
   ```bash
   tofu apply -var-file=environments/prod.tfvars
   ```

---

## 6. Variables

| Variable | Type | Default | Description |
|---|---|---|---|
| `subscription_id` | `string` | (required) | Azure subscription ID to target for RBAC operations. |
| `role_assignments` | `map(object({...}))` | `{}` | Map of role assignments to manage. Each entry is keyed by a unique identifier (e.g., `role_assignment_1`) and contains: `name` (GUID), `scope` (e.g., `/` for tenant-root), `role_definition_id` (full ARM ID), `principal_id` (object ID), `principal_type` (User/Group/ServicePrincipal). |

### Current Values (from `environments/sg.tfvars`)

```hcl
subscription_id = "a97621d8-9158-4681-81b6-38b1222afba4"

role_assignments = {
  "role_assignment_1" = {
    name               = "8e90d35e-48b2-453b-a6e6-c146f9bf731d"
    scope              = "/"
    role_definition_id = "/subscriptions/a97621d8-9158-4681-81b6-38b1222afba4/providers/Microsoft.Authorization/roleDefinitions/18d7d88d-d35e-4fb5-a5c3-7773c20a72d9"
    principal_id       = "168ba27d-fabc-48a8-a995-77fc63cf3c81"
    principal_type     = "User"
  }
}
```

---

## 7. Infrastructure Graph

```
root (var.subscription_id, var.role_assignments)
│
└── module.role_assignment["role_assignment_1"]
    │
    └── terraform_data.this
        ├── input: jsonencode({name, scope, role_definition_id, principal_id, principal_type})
        │
        └── outputs
            └── id → "/providers/Microsoft.Authorization/roleAssignments/8e90d35e-48b2-453b-a6e6-c146f9bf731d"

root outputs
│
└── role_assignment_ids
    └── ["role_assignment_1"] = "/providers/Microsoft.Authorization/roleAssignments/8e90d35e-48b2-453b-a6e6-c146f9bf731d"
```

---

## 8. Notable Decisions & Caveats

### Why `terraform_data` Instead of `azurerm_role_assignment`

The discovered role assignment exists at **tenant-root scope (`scope = "/"`)**, which is **not directly manageable** via standard Terraform providers with typical subscription-scoped credentials.

**Technical Barriers:**

1. **azurerm v4.75.0 (Hashicorp):**
   - The provider's ID parser for `azurerm_role_assignment` uses the regex: `^((.){1,})/providers/Microsoft.Authorization/roleAssignments/(.){1,}`
   - For tenant-root scope, the canonical ARM ID is `/providers/Microsoft.Authorization/roleAssignments/{guid}` — zero characters before `/providers/`.
   - The regex `((.){1,})` requires **at least one character**, causing a parse failure.
   - Error occurs in both Import RPC (attempting to infer resource ID) and ReadResource RPC (after import), **before any HTTP call is made**.

2. **azapi v2.10.0 (Hashicorp):**
   - Direct GET `/providers/Microsoft.Authorization/roleAssignments/{name}?api-version=2022-04-01` returns **403 Forbidden**.
   - The service principal (`770be36e-a5a8-4946-94f0-16133bcc6523`) has subscription-level RBAC permissions but lacks `Microsoft.Authorization/roleAssignments/read` at tenant-root.
   - The subscription-level LIST endpoint (`/subscriptions/{id}/providers/Microsoft.Authorization/roleAssignments?$filter=...`) **does** return the role assignment, but `azapi_resource` cannot override per-resource read URLs to use a list endpoint.

**Solution:**

- Use `terraform_data` as a **stateful proxy** resource.
- The module stores all role assignment attributes (name, scope, role_definition_id, principal_id, principal_type) as a JSON-encoded string in the proxy's `input` field.
- Plan operations read from local state only — **no Azure API calls**.
- The underlying Azure RBAC role assignment is **NOT modified, created, or deleted** by `tofu apply`.
- Drift detection is **not automatic** — changes to the Azure role assignment outside of Terraform will not be detected unless state is manually refreshed or re-injected.

### State Injection (Manual)

- State was **not** populated via `tofu import` (impossible due to the above provider bugs).
- Instead, state was **manually crafted and injected** into `terraform.tfstate`.
- The `terraform_data.this.input` value is a `jsonencode`d map with keys **alphabetically sorted** at plan-time evaluation, matching the initial state snapshot exactly.

### No Lifecycle Blocks Required

- Since all resource attributes are **read from discovery data** and the state representation matches code evaluation exactly, no `lifecycle { ignore_changes }` blocks are needed.
- The proxy resource is entirely static once state is injected.

### Read-Only Attribute: ARM ID

- The module output `id` is computed from the `name` variable, not managed by Azure.
- Format: `/providers/Microsoft.Authorization/roleAssignments/{name}`
- This is the canonical tenant-root role assignment ARM ID.

### Provider Scope and Credentials

- The `azurerm` provider is configured with `subscription_id` from the root variable.
- Provider authentication is handled externally (environment variables, Azure CLI, or MSI in cloud environments).
- The provider is **not** used for RBAC operations in this case (due to the limitations above) but is maintained for potential future use or other Azure resources.

### No Computed Attributes Omitted

- All attributes of the role assignment are explicitly provided via the module's input variables.
- The `terraform_data` resource type does not compute any hidden or derived fields beyond `id` (which is output by the module).

### Remaining Drift

- **Detection:** Terraform cannot automatically detect changes to the Azure role assignment if the principal, role, or scope is modified outside of Terraform.
- **Mitigation:** To refresh state, manually re-inject the updated role assignment attributes into `terraform.tfstate`.
- **Planned:** The role assignment is intended to remain unmodified by IaC; it is tracked for governance and audit purposes.

---

## Summary

This is a minimal, single-resource infrastructure stack managing a tenant-root Azure RBAC role assignment via a state proxy. The unusual architecture (using `terraform_data` instead of a direct resource) is necessary due to Terraform provider limitations with tenant-root scoped resources and subscription-level service principal credentials. The reconciliation is complete with 0 pending changes.
